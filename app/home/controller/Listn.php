<?php
// +----------------------------------------------------------------------
// | YFCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2015-2016 http://www.rainfer.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: rainfer <81818832@qq.com>
// +----------------------------------------------------------------------
namespace app\home\controller;

use think\Db;
use app\home\model\News;
/**
 * 文章列表
*/
class Listn extends Base
{

	public function index() {
	    $newsModel = new News;
		$list_id=input('id');
		$page=input('page');
		$pagesize=5;
		$menu=Db::name('menu')->find(input('id'));
		if(empty($menu)){
			$this->error(lang('operation not valid'));
		}

		$tplname=$menu['menu_listtpl'];
		$tplname=$tplname?:'list';
		if($tplname=="photo_list") $pagesize=4;//相册格式
		$model=Db::name('model')->find($menu['menu_modelid']);
		if($model){
			//判断ajax模板是否存在
			if(is_file($this->ym_theme_path.'ajax_'.$tplname) && request()->isAjax()){
				$data=Db::name($model['model_name'])->where($model['model_cid'],$list_id)->order($model['model_order'])->paginate($pagesize,false,['page'=>$page]);
				$tplname=":ajax_".$tplname;
				$lists['page'] = $data->render();
				//替换成带ajax的class
				$page_html=$lists['page'];
				$page_html=preg_replace("(<a[^>]*page[=|/](\d+).+?>(.+?)<\/a>)","<a href='javascript:ajax_page($1);'>$2</a>",$page_html);
			}else{
				$data=Db::name($model['model_name'])->where($model['model_cid'],$list_id)->order($model['model_order'])->paginate($pagesize,false);
				$lists['page'] = $data->render();
				$page_html=$lists['page'];
			}
			$lists['news']=$data;
            $this->assign('page_html',$page_html);
		}else{
			//news
			if(request()->isAjax()){
				$lists=get_news('cid:'.$list_id.';order:news_time desc',1,$pagesize,null,null,array(),$page);
				$tplname=":ajax_".$tplname;
				//
                $page_html=$lists['page'];
                $this->assign('page_html',$page_html);
			}else{
				//$lists=get_news('cid:'.$list_id.';order:news_time desc',1,$pagesize);
				$lists=get_news('cvid:'.$list_id.';order:news_time desc',1, 10);
                //$newsModel = new News;
                //$lists = $newsModel->getListAll($list_id);
                //dump($lists); exit;
			}
			//替换成带ajax的class
			$page_html=$lists['page'];
			/*
			$page_html=preg_replace("(<a[^>]*page[=|/](\d+).+?>(.+?)<\/a>)","<a href='javascript:ajax_page($1);'>$2</a>",$page_html);
			*/
		}

		$toutiao = $newsModel->getToutiao($list_id);
        $newsSlides = $newsModel->getListSlides($list_id,
            'n_id,news_title,news_img',
            2);
        $newsTodayHot = $newsModel->getRand(8,
            'n_id,news_title',
            'news_hits',
            100,
            $list_id,
            null);
        $newsHot = $newsModel->getRand(4,
            'n_id,news_title,news_img',
            'news_hits',
            100,
            $list_id,
            null);
        $newsRecom = $newsModel->getRand(10,
            'n_id,news_title,news_img',
            'news_time',
            100,
            $list_id,
            'c');

        $this->assign('toutiao', $toutiao);
        $this->assign('news_slides', $newsSlides);
        $this->assign('news_today', $newsTodayHot);
        $this->assign('news_hot', $newsHot);
        $this->assign('news_recom', $newsRecom);

		$this->assign('menu',$menu);
		$this->assign('page_html',$page_html);
		$this->assign('lists',$lists);
		$this->assign('list_id', $list_id);
		return $this->view->fetch(":$tplname");
	}

	public function search()
    {
		$k = input("keyword");
		$page = input("post.page");
		$pagesize=5;
		if (empty($k)) {
			$this -> error(lang('keywords empty'));
		}
		if(request()->isAjax()){
 			if(empty($page)){
				$this->success(lang('success'),url('home/Listn/search',array('keyword'=>$k)));
			}else{
				$lists=get_news('order:news_time desc',1,$pagesize,'keyword',$k,array(),$page);
				//替换成带ajax的class
				$page_html=$lists['page'];
				$page_html=preg_replace("(<a[^>]*page[=|/](\d+).+?>(.+?)<\/a>)","<a href='javascript:ajax_page($1);'>$2</a>",$page_html);
				$this->assign('page_html',$page_html);
				$this->assign('lists',$lists);
				$this -> assign("keyword", $k);
				return $this->view->fetch(":ajax_list");				
			} 
		}else{
			$lists=get_news('order:news_time desc',1,$pagesize,'keyword',$k);
			//替换成带ajax的class
			$page_html=$lists['page'];
			$page_html=preg_replace("(<a[^>]*page[=|/](\d+).+?>(.+?)<\/a>)","<a href='javascript:ajax_page($1);'>$2</a>",$page_html);
			$this->assign('page_html',$page_html);
			$this->assign('lists',$lists);
			$this -> assign("keyword", $k);		
			return $this->view->fetch(':search');
		}
    }
}
