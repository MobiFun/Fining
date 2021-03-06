<?php
namespace wstmart\admin\controller;
use wstmart\admin\model\LogUserLogins as M;
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
 * 用户登录日志控制器
 */
class Loguserlogins extends Base{
	
    public function index(){
    	return $this->fetch("list");
    }
    
    /**
     * 获取分页
     */
    public function pageQuery(){
    	$m = new M();
    	return WSTGrid($m->pageQuery());
    }

    public function shopIndex(){
        return $this->fetch("logshoplogins/list");
    }
    
    /**
     * 获取分页
     */
    public function shopPageQuery(){
        $m = new M();
        return WSTGrid($m->shopPageQuery());
    }
}
