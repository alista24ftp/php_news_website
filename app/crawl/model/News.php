<?php
namespace app\crawl\model;

use think\Model;
use think\Db;

class News extends Model
{
    protected $pk = 'n_id';
    protected $table = 'jt_news';

    public function insertIntoDb($allNews)
    {
        Db::startTrans();
        try{
            Db::name('news')->insertAll($allNews);
            Db::commit();
        }catch(\Exception $e){
            Db::rollback();
            throw $e;
        }
    }

    public function getMostRecentTime($columnviceid)
    {
        $mostRecentTime = $this->where(['news_columnviceid'=>$columnviceid])
            ->max('news_time');
        return $mostRecentTime;
    }

    public function getNews($field, $where=[])
    {
        return $this->field($field)->where($where)->select();
    }

    public function updateNews($list)
    {
        return $this->saveAll($list);
    }

    public function deleteNews($ids)
    {
        return $this::destroy($ids);
    }
}
