<?php /*a:2:{s:53:"D:\www\site1\wstmart\admin\view\shopstyles\index.html";i:1579428715;s:41:"D:\www\site1\wstmart\admin\view\base.html";i:1586703143;}*/ ?>
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

<div class="layui-tab layui-tab-brief" lay-filter="msgTab">
   <ul class="layui-tab-title">
   <?php if(is_array($cats) || $cats instanceof \think\Collection || $cats instanceof \think\Paginator): $i = 0; $__LIST__ = $cats;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
      <li <?php if($key==0): ?>class="layui-this"<?php endif; ?>  onclick="listQuery('<?php echo $vo['styleSys']; ?>',1)"><?php echo $vo['styleSys']; ?></li>
   <?php endforeach; endif; else: echo "" ;endif; ?>
   </ul>
   <div class="layui-tab-content" style="padding: 10px 0;">
      <?php if(is_array($cats) || $cats instanceof \think\Collection || $cats instanceof \think\Paginator): $i = 0; $__LIST__ = $cats;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
         <div id="style_<?php echo $vo['styleSys']; ?>" class="layui-tab-item <?php if($key==0): ?>layui-show<?php endif; ?>">
         </div>
      <?php endforeach; endif; else: echo "" ;endif; ?>
    </div>
</div>
<script id="tblist" type="text/html">
    {{# var dcat=d['cat'];var dcats=d['cats']; var dsys=d['sys'];}}
    <div class='style-txt' style="margin-left:10px;">分类：
        <select  style="height:24px;" onchange="listQuery('{{dsys}}',1,this)">
            <option class="ipt" value="-1">全部分类</option>
            {{# for(var j = 0; j < dcats.length; j++){ }}
            <option class="ipt" value="{{dcats[j]['dataVal']}}" {{# if(dcat == dcats[j]['dataVal']){ }}selected{{# } }}>{{dcats[j]['dataName']}}</option>
            {{#}}}
        </select>
    </div>
{{# var dcat=d['cats'];var dl = d['list']['data'];for(var i = 0; i < dl.length; i++){ }}
<div class='style-box'>
   <div class='style-img'>
     <a href='#'>
         {{# if(d['sys']=='weapp'){  }}
         <img data-original='/wstmart/weapp/view/resources/{{dl[i]["screenshot"]}}' class='gImg' />
         {{# }else if(d['sys']=='app'){  }}
         <img data-original='/wstmart/app/view/resources/{{dl[i]["screenshot"]}}' class='gImg' />
         {{# }else{ }}
         <img data-original='/wstmart/{{d["sys"]}}/view/{{dl[i]["styleImgPath"]}}/{{dl[i]["screenshot"]}}' class='gImg' />
         {{# } }}
     </a>
   </div>
   <div class='style-txt'>标题：{{dl[i]['styleName']}}</div>
   <div class='style-txt'>分类：
       <select name="shopStylesCat" id="shopStylesCat" style="height:24px;" onchange="changeStyleCat(this,{{dl[i]['id']}})">
           {{# for(var j = 0; j < dcat.length; j++){ }}
                <option class="ipt" value="{{dcat[j]['dataVal']}}" {{# if(dl[i]['styleCat'] == dcat[j]['dataVal']){ }}selected{{# } }}>{{dcat[j]['dataName']}}</option>
           {{#}}}
       </select>
   </div>
   <div class='style-txt' style="margin-top:30px;">
       <input type="radio" name="isShow{{dl[i]['id']}}" value="1" {{#if(dl[i]['isShow']==1){}}checked{{#}}} id="isShow{{dl[i]['id']}}-1" onchange="changeStyle(this,{{dl[i]['id']}})"/><label for="isShow{{dl[i]['id']}}-1">显示</label>
       <input type="radio" name="isShow{{dl[i]['id']}}" value="0" {{#if(dl[i]['isShow']==0){}}checked{{#}}} id="isShow{{dl[i]['id']}}-2" onchange="changeStyle(this,{{dl[i]['id']}})"/><label for="isShow{{dl[i]['id']}}-2">隐藏</label>
   </div>
</div>
{{#}}}
</script>
<div style="position:fixed;bottom:10px;width:100%;height:50px;">
    <div id='pager' align="center" style='padding:5px 0 5px 0'>&nbsp;</div>
</div>

<script src="/static/plugins/bootstrap/js/bootstrap.min.js"></script>
<script language="javascript" type="text/javascript" src="/static/plugins/layui/layui.all.js"></script>
<script language="javascript" type="text/javascript" src="__ADMIN__/js/common.js"></script>

<script src="__ADMIN__/shopstyles/styles.js?v=<?php echo $v; ?>" type="text/javascript"></script>
<script language="javascript" type="text/javascript" src="/static/plugins/lazyload/jquery.lazyload.min.js"></script>

<?php echo hook('initCronHook'); ?>
</body>
</html>