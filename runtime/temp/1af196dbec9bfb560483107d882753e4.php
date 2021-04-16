<?php /*a:2:{s:52:"D:\www\site1\wstmart\admin\view\goods\list_sale.html";i:1591346582;s:41:"D:\www\site1\wstmart\admin\view\base.html";i:1586703143;}*/ ?>
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

<style type="text/css">
    #mmg td:nth-child(5){color: red;}
</style>
<div class="wst-toolbar">
<select id="areaId1" class='j-ipt j-areas hide' level="0" onchange="WST.ITAreas({id:'areaId1',val:this.value,className:'j-areas'});">
  <option value="">-商家所在地-</option>
  <?php if(is_array($areaList) || $areaList instanceof \think\Collection || $areaList instanceof \think\Paginator): $i = 0; $__LIST__ = $areaList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
  <option value="<?php echo $vo['areaId']; ?>"><?php echo $vo['areaName']; ?></option>
  <?php endforeach; endif; else: echo "" ;endif; ?>
</select>
<select id="cat_0" class='ipt pgoodsCats' level="0" onchange="WST.ITGoodsCats({id:'cat_0',val:this.value,isRequire:false,className:'pgoodsCats'});">
   <option value="">-所属分类-</option>
   <?php $_result=WSTGoodsCats(0);if(is_array($_result) || $_result instanceof \think\Collection || $_result instanceof \think\Paginator): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
	<option value="<?php echo $vo['catId']; ?>"><?php echo $vo['catName']; ?></option>
	<?php endforeach; endif; else: echo "" ;endif; ?>
</select>
<input type="text" name="goodsName"  placeholder='商品名称/商品编号' id="goodsName" class='j-ipt'/>
<input type="text" name="shopName"  placeholder='店铺名称/店铺编号' id="shopName" class='j-ipt'/>
<button class="btn btn-primary" onclick='javascript:loadGrid(0)'><i class='fa fa-search'></i>查询</button>

<?php if(WSTGrant('SJSP_05')): if((WSTDatas('ADS_TYPE',2)!='' || WSTDatas('ADS_TYPE',3)!='' || WSTDatas('ADS_TYPE',5)!='')): ?>
  <button class="btn btn-primary f-right" onclick='javascript:toExplode()'><i class='fa fa-cloud-download'></i>导出商品二维码</button>
  <?php endif; ?>
<?php endif; ?>
<div style='clear:both'></div>
</div>
<div class='wst-grid'>
<div id="mmg" class="mmg layui-form"></div>
<div id="pg" style="text-align: right;"></div>
</div>
<?php if((WSTDatas('ADS_TYPE',2)!='' || WSTDatas('ADS_TYPE',3)!='' || WSTDatas('ADS_TYPE',5)!='')): ?>
<div id="exportBox" style="display: none;text-align: center;padding-top: 30px;">
	请选择类型:<select id="vtype" style="width: 200px;">
            <?php if((WSTDatas('ADS_TYPE',2)!='' || WSTDatas('ADS_TYPE',3)!='')): ?>
    				<option value="1">手机/微信端</option>
            <?php endif; if((WSTDatas('ADS_TYPE',5)!='')): ?>
    				<option value="2">小程序端</option>
            <?php endif; ?>
			     </select>
</div>
<?php endif; ?>
<script>
$(function(){initSaleGrid(<?php echo $p; ?>);})

</script>

<script src="/static/plugins/bootstrap/js/bootstrap.min.js"></script>
<script language="javascript" type="text/javascript" src="/static/plugins/layui/layui.all.js"></script>
<script language="javascript" type="text/javascript" src="__ADMIN__/js/common.js"></script>

<script src="/static/plugins/mmgrid/mmGrid.js?v=<?php echo $v; ?>" type="text/javascript"></script>
<script src="__ADMIN__/goods/goods.js?v=<?php echo $v; ?>" type="text/javascript"></script>


<?php echo hook('initCronHook'); ?>
</body>
</html>