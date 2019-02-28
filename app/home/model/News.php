<?php
// +----------------------------------------------------------------------
// | YFCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2015-2016 http://www.rainfer.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: rainfer <81818832@qq.com>
// +----------------------------------------------------------------------

namespace app\home\model;

use think\Model;
use think\Db;

/**
 * 文章模型
 * @package app\admin\model
 */
class News extends Model
{

    public function __construct(){

    }

    public function getToutiao($cvid)
    {
        $toutiao = $this->flag($cvid,
            'h',
            'n_id,news_title,news_scontent,news_img,news_source,news_time',
            1,
            'news_time');
        return $toutiao[0];
    }

    public function getAllToutiao($data, $limit=10)
    {
        $toutiaos = $this->flag(null,'h', $data, $limit, 'news_time');
        return $toutiaos;
    }

    public function getListAll($columnviceid=null, $limit=10, $ispage=false, $pagesize=null)
    {
        $where = [];
        if(isset($columnviceid) && !is_null($columnviceid)){
            $where['news_columnviceid'] = $columnviceid;
        }

        if($ispage){
            $pagesize = isset($pagesize) && !is_null($pagesize) ? intval($pagesize) : config('paginate.list_rows');
            $config = [];
            $list = Db::name("news")
                ->where($where)
                ->order('news_time', 'desc')
                ->paginate($pagesize, false, $config);
            $show = $list->render();
            return [
                'list'=>$list,
                'show'=>$show
            ];
        }else{
            $list = Db::name("news")
                ->where($where)
                ->order('news_time', 'desc')
                ->limit($limit)
                ->select();
            return [
                'list'=>$list
            ];
        }
    }

    public function getHomeSlides()
    {
        $slides = Db::name('news')
            ->field('n_id,news_title,news_img')
            ->where('news_flag','like','%i%')
            ->order('news_time desc')
            ->limit(6)
            ->select();
        return $slides;
    }

    public function getListSlides($list_id, $data, $limit=10)
    {
        $list = $this->flag($list_id,
            's',
            $data,
            $limit,
            'news_time');
        return $list;
    }

    public function getRand($num, $data, $order, $limit=10, $list_id=null, $flag=null)
    {
        $list = $this->flag($list_id, $flag, $data, $limit, $order);
        $total = count($list);
        if($num >= $total)
            return $list;
        $randIndices = array_rand($list, $num); //dump($randIndices); exit;
        $resultList = [];
        foreach($randIndices as $i){
            array_push($resultList, $list[$i]);
        }
        return $resultList;
    }

    public function getOtherLists($currId)
    {
        $menuWhere = [
            'id'=>['<>', $currId],
            'menu_type'=>1,
            'menu_open'=>1
        ];
        $menuList = Db::name('menu')
            ->field('id,menu_name')
            ->where($menuWhere)
            ->select();
        foreach($menuList as $k=>$menu){
            $newsList = $this->flag($menu['id'],
                null,
                'n_id,news_title,news_img,news_source,news_time',
                5,
                'news_time');
            $menu['news_list'] = $newsList;
            $menuList[$k] = $menu;
        }
        return $menuList;
    }

    /**
     * 获取今日热点排行 默认按点击率排序
     * $data    取哪些字段
     * $order   按什么排序
     * $limit   取几条
     */
    public function getTodayHot($data, $order="news_hits", $limit=10, $list_id=null)
    {
        $now = time();
        $yesterday = $now - (24 * 60 * 60);

        if(!isset($list_id)){
            $list = Db::name('news')
                ->field($data)
                ->where('news_time', '>=', $yesterday)
                ->where('news_time', '<=', $now)
                ->order($order." desc")
                ->limit($limit)
                ->select();
        }else{
            $list = Db::name('news')
                ->field($data)
                ->where('news_columnviceid', $list_id)
                ->where('news_time', '>=', $yesterday)
                ->where('news_time', '<=', $now)
                ->order($order." desc")
                ->limit($limit)
                ->select();
        }

        return $list;
    }

    /**
     * 获取前十热点新闻 默认按点击率排序
     * $data    取哪些字段
     * $limit   取几条
     */
    public function getTop10($data, $limit=10, $list_id=null)
    {
        if(!isset($list_id)){
            $list = Db::name('news')
                ->field($data)
                ->order('news_hits desc')
                ->limit($limit)
                ->select();
        }else{
            $list = Db::name('news')
                ->field($data)
                ->where('news_columnviceid', $list_id)
                ->order('news_hits desc')
                ->limit($limit)
                ->select();
        }

        return $list;
    }

    /**
     * 获取推荐新闻排行 默认按时间排序
     * $data    取哪些字段
     * $order   按什么排序
     * $limit   取几条
     */
    public function getRecommended($data, $order='news_time', $limit=10, $list_id=null)
    {
        if(!isset($list_id)){
            $list = Db::name('news')
                ->field($data)
                ->where('news_flag', '=', 'c')
                ->order($order)
                ->limit($limit)
                ->select();
        }else{
            $list = Db::name('news')
                ->field($data)
                ->where('news_columnviceid', $list_id)
                ->where('news_flag', '=', 'c')
                ->order($order)
                ->limit($limit)
                ->select();
        }

        return $list;
    }

	/**获取热点排行 默认按点击率排序
     * $list_id 2级栏目id
     * $data    取哪些字段
     * $order   按什么排序
     * $limit   取几条
    */
	public function hot_list($list_id,$data,$order="news_hits",$limit=10){
        $message = Db::name("news")
            ->field($data)
            ->where("news_columnid",$list_id)
            ->order($order." desc")
            ->limit($limit)
            ->select();
        return $message;
    }
    /**独家策划 如果大于5条随机取
     * $parentid 2级栏目id
     * $data     取哪些字段
     * $order     默认按时间排序
     * $limit    取几条
     */
    public function sole($parentid,$data,$order="news_time",$limit="5"){
            $message=Db::name("menu")->where("parentid",$parentid)->order("listorder desc")->column("id");
            array_unshift($message,$parentid);
            $sole=Db::name("news")
                ->where("news_back=0 AND news_open=1 AND news_img!=''")
                ->where("news_columnid","in",$message)
                ->count();
            if($sole>$limit){
                $limit = rand(0,$sole-$limit);
                $limit = $limit.",5";
            }
            $sole=Db::name("news")
                ->field($data)
                ->where("news_back=0 AND news_open=1 AND news_img!=''")
                ->where("news_columnid","in",$message)
                ->order($order." desc")
                ->limit($limit)
                ->select();
        return $sole;
    }

    /***
    跟据栏目id和属性获取文章
     * $id 栏目id
     * $flag 属性名
     * $limit 取几条
     * $column 获取的字段名
     * h=>头条 c=>推荐 f=>幻灯 a=>特荐 s=>滚动 p=>图片 j=>跳转 d=>原创 cp=>产品
     */
    public function flag($id=null,$flag=null,$data,$limit="10",$order="news_hits"){
        $where = [
            'news_open'=>1,
            'news_back'=>0
        ];
        if(isset($flag)){
            $where['news_flag'] = ['like', '%'.$flag.'%'];
        }
        if(isset($id)){
            $where['news_columnviceid'] = $id;
        }
        $data=Db::name('news')
            ->field($data)
            //->where(array("news_columnviceid"=>$id,"news_open"=>"1","news_back"=>"0"))
            //->where('news_flag like "%'.$flag.'%"')
            ->where($where)
            ->order($order." desc")
            ->limit($limit)
            ->select();
        return $data;
    }

    /**
     * 通过1级栏目ID获取2级栏目数据
     * $parentid  1级栏目id
     * $data      要获取的字段
     * $limit     取几个二级栏目
     */
    public function parentid($parentid,$data="*",$limit="10"){
        $message = Db::name("menu")
            ->field($data)
            ->where("parentid=".$parentid)
            ->where("menu_open=1 AND menu_l='zh-cn'")
            ->order("listorder desc")
            ->limit($limit)
            ->select();
        return $message;
    }
}
