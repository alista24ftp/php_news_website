<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/2/20
 * Time: 10:41
 */

namespace app\home\model;

use think\Model;
use think\Db;

class PlugAd extends Model
{
    protected $pk = 'plug_ad_id';
    protected $table = 'jt_plug_ad';

    public function __construct()
    {

    }

    public function getAllAds($adTypeId=null)
    {
        $where = ['plug_ad_open'=>1];
        if(isset($adTypeId))
            $where['plug_ad_adtypeid'] = $adTypeId;
        $ads = $this::where($where)->select();

        $allAds = [];
        foreach($ads as $ad){
            $typeId = $ad['plug_ad_adtypeid'];
            if(!isset($allAds[$typeId])){
                $allAds[$typeId] = [$ad];
            }else{
                array_push($allAds[$typeId], $ad);
            }
        }

        foreach($allAds as $typeId=>$ads){
            shuffle($allAds[$typeId]);
        }

        return $allAds;
    }


}