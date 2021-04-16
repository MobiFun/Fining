<?php /*a:2:{s:49:"D:\www\site1\wstmart\admin\view\express\list.html";i:1600072605;s:41:"D:\www\site1\wstmart\admin\view\base.html";i:1586703143;}*/ ?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<title>后台管理中心 - <?php echo WSTConf('CONF.mallName'); ?></title>
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

<script src="__ADMIN__/js/jquery.min.js"></script>

<link rel="stylesheet" type="text/css" href="/static/plugins/mmgrid/mmGrid.css?v=<?php echo $v; ?>" />


<link rel="stylesheet" href="/static/plugins/bootstrap/css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="/static/plugins/layui/css/layui.css" type="text/css" />
<link rel="stylesheet" href="/static/plugins/font-awesome/css/font-awesome.min.css" type="text/css" />
<link href="__ADMIN__/css/common.css?v=<?php echo $v; ?>" rel="stylesheet" type="text/css" />


<?php 
$msgGrant = [];
if(WSTGrant('TSDD_00'))$msgGrant[] = 'shopapply';
if(WSTGrant('DSHSP_00'))$msgGrant[] = 'goodsaudit';
if(WSTGrant('TSDD_00'))$msgGrant[] = 'ordercomplains';
if(WSTGrant('JBSP_00'))$msgGrant[] = 'informs';
 ?>
<script>
window.conf = {"DOMAIN":"<?php echo str_replace('index.php','',app('request')->root(true)); ?>","ROOT":"","APP":"","STATIC":"/static","SUFFIX":"<?php echo config('url_html_suffix'); ?>","GOODS_LOGO":"<?php echo WSTConf('CONF.goodsLogo'); ?>","SHOP_LOGO":"<?php echo WSTConf('CONF.shopLogo'); ?>","MALL_LOGO":"<?php echo WSTConf('CONF.mallLogo'); ?>","USER_LOGO":"<?php echo WSTConf('CONF.userLogo'); ?>",'GRANT':'<?php echo implode(",",session("WST_STAFF.privileges")); ?>',"IS_CRYPT":"<?php echo WSTConf('CONF.isCryptPwd'); ?>","ROUTES":'<?php echo WSTRoute(); ?>',"MAP_KEY":"<?php echo WSTConf('CONF.mapKey'); ?>","__HTTP__":"<?php echo WSTProtocol(); ?>",'RESOURCE_PATH':'<?php echo WSTConf('CONF.resourcePath'); ?>',MSG_GRANT:'<?php echo implode(',',$msgGrant); ?>'}
</script>
<script language="javascript" type="text/javascript" src="/static/js/common.js"></script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div id="j-loader"><img src="__ADMIN__/img/ajax-loader.gif"/></div>

<?php if(WSTGrant('KDGL_01')): ?>
<div id='alertTips' class='alert alert-success alert-tips fade in'>
  <div id='headTip' class='head'><i class='fa fa-lightbulb-o'></i>操作说明</div>
  <ul class='body'>
    <li>本功能主要用于管理快递公司的信息。快递代码主要用于物流插件的快递识别查询，填写时请参照各物流插件的快递代码填写。</li>
  </ul>
</div>
<div class="wst-toolbar">
   <button class="btn btn-success f-right" onclick='javascript:toEdit(0)'><i class='fa fa-plus'></i>新增</button>
   <div style="clear:both"></div>
<?php endif; ?>
</div>
<div class='wst-grid'>
<form lay-filter='gridForm' class='layui-form wst-grid'>
<div id="mmg" class="mmg"></div>
</form>
<div id="pg" style="text-align: right;"></div>
</div>

<div id='expressBox' style='display:none'>
    <form id='expressForm' autocomplete="off">
    <table class='wst-form wst-box-top'>
       <tr>
          <th width='100'>快递名称<font color='red'>*</font>：</th>
          <td><input type='text' id='expressName' name="expressName"  class='ipt' maxLength='20'/></td>
       </tr>
       <tr>
          <th width='100'>快递代码：</th>
          <td><input type='text' id='expressCode' name="expressCode"  class='ipt' maxLength='20'/></td>
       </tr>
       <tr>
          <td colspan="2" style="padding-left: 35px;">快递代码是用于物流查询，请查询所启用插件的快递代码</td>
       </tr>
       <tr>
        <th width='100'>是否显示<font color='red'>*</font>：</th>
        <td height='24' class='layui-form'>
           <input type="checkbox" id='isShow' name='isShow' value="1" lay-skin="switch" lay-filter="switchTest" class="ipt" lay-text="显示|隐藏">
        </td>
     </tr>
    </table>
    </form>
 </div>
<script>
  $(function(){initGrid(<?php echo $p; ?>)});
</script>

<script src="/static/plugins/bootstrap/js/bootstrap.min.js"></script>
<script language="javascript" type="text/javascript" src="/static/plugins/layui/layui.all.js"></script>
<script language="javascript" type="text/javascript" src="__ADMIN__/js/common.js"></script>

<script src="/static/plugins/mmgrid/mmGrid.js?v=<?php echo $v; ?>" type="text/javascript"></script>
<script src="__ADMIN__/express/express.js?v=<?php echo $v; ?>" type="text/javascript"></script>

<?php echo hook('initCronHook'); ?>
</body>
</html>