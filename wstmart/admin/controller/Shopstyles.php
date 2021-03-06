<?php
namespace wstmart\admin\controller;
use wstmart\admin\model\ShopStyles as M;
/**
 * ============================================================================
 * WSTMart多用户商城
 * 版权所有 2016-2066 广州商淘信息科技有限公司，并保留所有权利。
 * 官网地址:http://www.wstmart.net
 * 交流社区:http://bbs.shangtao.net
 * 联系QQ:153289970
 * ----------------------------------------------------------------------------
 * 这不是一个自由软件！未经本公司授权您只能在不用于商业目的的前提下对程序代码进行修改和使用；
 * 不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
 * 店铺风格控制器
 */
class Shopstyles extends Base{
    public function index(){
        $m = new M();
        $rs = $m->getCats();
        $m->initStyles();
        $this->assign('cats',$rs);
        return $this->fetch();
    }
    /**
     * 获取风格列表
     */
    public function listQueryBySys(){
        $m = new M();
        $rs = $m->listQuery();
        return WSTReturn('',1,$rs);
    }

    /**
     * 保存
     */
    public function changeStyleShow(){
        $m = new M();
        return $m->changeStyleShow();
    }

    /*
     * 设置店铺风格的分类
     */
    public function changeStyleCat(){
        $m = new M();
        return $m->changeStyleCat();
    }
}
