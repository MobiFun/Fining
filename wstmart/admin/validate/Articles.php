<?php 
namespace wstmart\admin\validate;
use think\Validate;
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
 * 文章验证器
 */
class Articles extends Validate{
	protected $rule = [
	    'articleTitle' => 'require|max:150',
		'articleKey' => 'require|max:300',
        'articleDesc' => 'require|max:250',
	    'articleContent' => 'require'
    ];
     
    protected $message = [
        'articleTitle.require' => '请输入文章标题',
        'articleTitle.max' => '文章标题不能超过50个字符',
        'articleKey.require' => '请输入文章关键字',
        'articleKey.max' => '文章关键字不能超过100个字符',
        'articleDesc.require' => '请输入文章描述',
        'articleDesc.max' => '文章描述不能超过200个字符',
        'articleContent.require' => '请输入文章内容'

    ];
    protected $scene = [
        'add'   =>  ['articleTitle','articleKey','articleDesc','articleContent'],
        'edit'  =>  ['articleTitle','articleKey','articleDesc','articleContent']
    ]; 
}