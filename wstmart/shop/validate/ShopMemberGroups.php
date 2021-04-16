<?php
namespace wstmart\shop\validate;
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
 * 商家会员分组验证器
 */
class ShopMemberGroups extends Validate{
	protected $rule = [
	    'groupName' => 'require|max:50',
        'minMoney'=> 'checkMoney',
        'maxMoney'=> 'checkMoney'
    ];

    protected $message = [
        'groupName.require' => '请输入分组名称',
        'groupName.max' => '分组名称不能超过50个字符',
    ];

    protected function checkMoney($value){
        $minMoney = input("minMoney");
        $maxMoney = input("maxMoney");
        if((float)$minMoney>(float)$maxMoney)return '最低消费不能大于最高消费';
        return true;
    }

    protected $scene = [
        'add'   =>  ['groupName','minMoney','maxMoney'],
        'edit'  =>  ['groupName','minMoney','maxMoney'],
    ];
}
