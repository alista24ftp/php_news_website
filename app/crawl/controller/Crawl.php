<?php
namespace app\crawl\controller;
ini_set('max_execution_time', '1800');
ini_set('post_max_size', '0');
ini_set('memory_limit', '-1');

use think\Controller;
use app\crawl\model\News as NewsModel;
use app\crawl\crawl\Crawl as CrawlHelper;

class Crawl extends Controller
{
    public function index()
    {
        $jsonFiles = json_decode(file_get_contents(__DIR__.'/../crawljson/files.json'), true);
        $this->assign('json_files', array_keys($jsonFiles));
        return $this->fetch();
    }

    public function crawlall(CrawlHelper $crawl)
    {
        $name = input('json_name', 'eastday');
        $msg = $crawl->crawlAll($name);
        //$this->assign('msg', $msg);
        //return $this->fetch();
        echo $msg;
    }

    public function crawl(CrawlHelper $crawl)
    {
        $name = 'eastday';
        $crawl->crawl($name, '');
    }

    public function test(CrawlHelper $crawl)
    {
        $name = 'eastday';
        $crawl->test();
    }


}
