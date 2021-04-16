<?php /*a:2:{s:50:"D:\www\site1\wstmart\admin\view\enter_license.html";i:1566974133;s:41:"D:\www\site1\wstmart\admin\view\base.html";i:1586703143;}*/ ?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<title>后台管理中心 - <?php echo WSTConf('CONF.mallName'); ?></title>
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

<script src="__ADMIN__/js/jquery.min.js"></script>


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

   </head>
   <body>
   <body>
       <form id='editFrom' name="editFrom" method="post" id="myform" autocomplete="off">
        <table class="wst-form" style='margin-top:30px;'>
           <tr>
             <th align='right'>授权域名 <font color='red'>*</font>：</th>
             <td>
             <?php echo request()->root(true); ?>
             </td>
           </tr>
           <tr>
             <th align='right' width='150'>授权码 <font color='red'>*</font>：</th>
             <td>
             <input type='text' id='license' name='license' style='width:400px;' data-rule="授权码: required;"/>
             </td>
           </tr>
           <tr id='licenseTr' style='display:none'>
             <th align='right'>授权状态 ：</th>
             <td id='licenseStatus' style='color:red;'></td>
           </tr>
           <tr>
             <td colspan='2' style='padding-left:250px;padding-top:15px;'>
                 <button type="button" class="btn btn-primary btn-mright" onclick='edit()'>提&nbsp;交</button>
                 <button type="reset" class="btn">重&nbsp;置</button>
             </td>
           </tr>
        </table>
       </form>

<script src="/static/plugins/bootstrap/js/bootstrap.min.js"></script>
<script language="javascript" type="text/javascript" src="/static/plugins/layui/layui.all.js"></script>
<script language="javascript" type="text/javascript" src="__ADMIN__/js/common.js"></script>

<script src="__ADMIN__/js/license.js?v=<?php echo $v; ?>" type="text/javascript"></script>

<?php echo hook('initCronHook'); ?>
</body>
</html>