<?php
// +----------------------------------------------------------------------
// | YFCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2015-2016 http://www.rainfer.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: rainfer <81818832@qq.com>
// +----------------------------------------------------------------------
namespace app\home\controller;

use think\Cache;
use think\Db;
use think\captcha\Captcha;
use app\home\model\News;

class Index extends Base
{
	public function index()
    {
		$newsModel = new News;
		$newsSlides = $newsModel->getHomeSlides();
		$newsTopRecom = $newsModel->getRand(8,
            'n_id,news_title,news_img',
            'news_time',
            500,
            null,
            null);
		$newsList = $newsModel->getListAll(null,30, true, 30);
		$newsTodayHot = $newsModel->getRand(8,
            'n_id,news_title',
            'news_hits',
            500,
            null,
            null);
		$newsHot = $newsModel->getRand(4,
            'n_id,news_title,news_img',
            'news_hits',
            10,
            null,
            null);
		$newsRecom = $newsModel->getRand(10,
            'n_id,news_title,news_img',
            'news_time',
            50,
            null,
            'c');

		$this->assign('news_slides', $newsSlides);
		$this->assign('news_top_recom', $newsTopRecom);
		$this->assign('news_list', $newsList['list']);
		$this->assign('page_html', $newsList['show']);
		$this->assign('news_today', $newsTodayHot);
		$this->assign('news_hot', $newsHot);
		$this->assign('news_recom', $newsRecom);
		return $this->view->fetch(':index');
	}
	public function visit()
    {
		$user=Db::name("member_list")->where(array("member_list_id"=>input('id',0,'intval')))->find();
		if(empty($user)){
			$this->error(lang('member not exist'));
		}
		$this->assign($user);
		return $this->view->fetch('user:index');
	}
	public function verify_msg()
	{
		ob_end_clean();
		$verify = new Captcha (config('verify'));
		return $verify->entry('msg');
	}
	public function lang()
	{
		if (!request()->isAjax()){
			$this->error(lang('submission mode incorrect'));
		}else{
			$lang=input('lang_s');
			switch ($lang) {
				case 'cn':
					cookie('think_var', 'zh-cn');
				break;
				case 'en':
					cookie('think_var', 'en-us');
				break;
				//其它语言
				default:
					cookie('think_var', 'zh-cn');
			}
			Cache::clear();
			$this->success(lang('success'),url('home/Index/index'));
		}
	}
	public function addmsg()
    {
		if (!request()->isAjax()){
			$this->error(lang('submission mode incorrect'));
		}else{
			$verify =new Captcha ();
			if (!$verify->check(input('verify'), 'msg')) {
				$this->error(lang('verifiy incorrect'));
			}
			$data=array(
				'plug_sug_name'=>input('plug_sug_name'),
				'plug_sug_email'=>input('plug_sug_email'),
				'plug_sug_content'=>input('plug_sug_content'),
				'plug_sug_addtime'=>time(),
				'plug_sug_open'=>0,
				'plug_sug_ip'=>request()->ip(),
			);
			$rst=Db::name('plug_sug')->insert($data);
			if($rst!==false){
				$this->success(lang('message success'));
			}else{
				$this->error(lang('message failed'));
			}
		}
	}
}