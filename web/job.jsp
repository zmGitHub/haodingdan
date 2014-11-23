<%--
  Created by IntelliJ IDEA.
  User: a
  Date: 2014/11/22
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>好订单</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/main/main.css">
    <!--Font-Awesome-->
    <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="css/slider/slider.css" />
    <script type="text/javascript" src="js/modernizr.custom.28468.js"></script>
    <noscript>
        <link rel="stylesheet" type="text/css" href="css/slider/nojs.css" />
    </noscript>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<!--登陆框-->
<div class="modal fade" id="login-form" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span>
                    <span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
            </div>
            <div class="modal-body">
                <h2>好订单登陆</h2>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">取 消</button>
                <button type="button" class="btn btn-success">登 陆</button>
            </div>
        </div>
    </div>
</div>
<!--最顶端的导航栏-->
<nav class="navbar navbar-inverse navbar-static-top" style="margin-bottom: 0" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">好订单首页</a>
        </div>
        <div id="top-navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">会员服务<span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">买家服务</a></li>
                        <li><a href="#">供应商服务</a></li>
                        <li><a href="#">认证服务</a></li>

                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">帮助中心<span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">常见问题</a></li>
                        <li><a href="#">新手入门</a></li>
                        <li><a href="#">我要流言</a></li>
                        <li><a href="#">在线客服</a></li>
                        <li><a href="#">联系我们</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav pull-right">
                <li><a href="#">简历中心</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="slider">
    <div id="da-slider" class="da-slider">
        <div class="job-form">
            <div class="job-box">
                <form class="form-horizontal" role="form">
                    <div class="form-group has-success has-feedback">
                        <div class="col-sm-4">
                            <strong class="text-white">求职者入口</strong>
                        </div>
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-4">
                        </div>
                    </div>
                    <div class="form-group has-success has-feedback">
                        <div class="col-sm-12">
                            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                            <input type="email" class="form-control" placeholder="邮箱">
                        </div>
                    </div>
                    <div class="form-group has-warning has-feedback">
                        <div class="col-sm-12">
                            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                            <input type="password" class="form-control" placeholder="密码(6-16字母,数字,无空格)">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-6">
                            <input type="text" class="form-control" placeholder="验证码">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <button type="submit" class="btn btn-info btn-lg col-sm-12">免 费 注 册</button>
                        </div>
                    </div>
                    <div class="form-group has-success has-feedback">
                        <div class="col-sm-12">
                            <span class="pull-right text-gray">已有账号,<em class="text-orange">马上登陆</em></span>
                        </div>
                    </div>
                </form>

            </div>
        </div>
        <div class="da-slide">
            <h2>Easy management</h2>
            <p>Far far away, behind the </p>
            <a href="#" class="da-link">Read more</a>
            <div class="da-img"><img src="images/slider/2.png" alt="image01" /></div>
        </div>
        <div class="da-slide">
            <h2>Revolution</h2>
            <p>A small river named .</p>
            <a href="#" class="da-link">Read more</a>
            <div class="da-img"><img src="images/slider/3.png" alt="image01" /></div>
        </div>
        <div class="da-slide">
            <h2>Warm welcome</h2>
            <p>When she reached .</p>
            <a href="#" class="da-link">Read more</a>
            <div class="da-img"><img src="images/slider/1.png" alt="image01" /></div>
        </div>
        <div class="da-slide">
            <h2>Quality Control</h2>
            <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
            <a href="#" class="da-link">Read more</a>
            <div class="da-img"><img src="images/slider/4.png" alt="image01" /></div>
        </div>
        <nav class="da-arrows">
            <span class="da-arrows-prev"></span>
            <span class="da-arrows-next"></span>
        </nav>
    </div>
</div>
<div class="container">
<div class="row">
    <div class="col-md-8">
        <div class="input-group input-group-lg">
            <input type="text" class="form-control" placeholder="输入职位关键词: 如 设计师等">
                <span class="input-group-btn">
                    <button class="btn btn-info" type="button"><i class="fa fa-search"></i> 搜 索 </button>
                </span>
        </div>
        <p class="host-link"><a href="detail.html">产品经理</a><a href="#">销售总监</a><a href="#">财务总监</a><a href="#">投资经理</a><a href="#">人力资源总监</a></p>
    </div>
    <div class="col-md-4">
        <div class="well-sm gray">
            本周新增职位 <span class="badge-square">2</span><span class="badge-square">2</span><span class="badge-square">2</span>个
        </div>
    </div>
</div>
<div class="row margin-top-30">
    <div class="col-md-12"><h2 class="hotIndustry">热门行业</h2></div>
</div>
<div class="row">
    <div class="col-md-4">
        <h3 class="job-title">
            <a href="#">房地产</a>
        </h3>
        <p class="job-list">
            <a href="" target="_blank" class="company-name">新城</a>
            <a target="_blank" href="" title="客服经理">客服经理</a>
            <a target="_blank" href="" title="客户拓展">客户拓展</a>
            <a target="_blank" href="" title="置业顾问">置业顾问</a>
        </p>

        <p class="job-list">
            <a href="" target="_blank" class="company-name">新城</a>
            <a target="_blank" href="" title="客服经理">客服经理</a>
            <a target="_blank" href="" title="客户拓展">客户拓展</a>
            <a target="_blank" href="" title="置业顾问">置业顾问</a>
        </p>
    </div>
    <div class="col-md-4">
        <h3 class="job-title">
            <a href="#">房地产</a>
        </h3>
        <p class="job-list">
            <a href="" target="_blank" class="company-name">新城</a>
            <a target="_blank" href="" title="客服经理">客服经理</a>
            <a target="_blank" href="" title="客户拓展">客户拓展</a>
            <a target="_blank" href="" title="置业顾问">置业顾问</a>
        </p>

        <p class="job-list">
            <a href="" target="_blank" class="company-name">新城</a>
            <a target="_blank" href="" title="客服经理">客服经理</a>
            <a target="_blank" href="" title="客户拓展">客户拓展</a>
            <a target="_blank" href="" title="置业顾问">置业顾问</a>
        </p>
    </div>
    <div class="col-md-4">
        <h3 class="job-title">
            <a href="#">房地产</a>
        </h3>
        <p class="job-list">
            <a href="" target="_blank" class="company-name">新城</a>
            <a target="_blank" href="" title="客服经理">客服经理</a>
            <a target="_blank" href="" title="客户拓展">客户拓展</a>
            <a target="_blank" href="" title="置业顾问">置业顾问</a>
        </p>

        <p class="job-list">
            <a href="" target="_blank" class="company-name">新城</a>
            <a target="_blank" href="" title="客服经理">客服经理</a>
            <a target="_blank" href="" title="客户拓展">客户拓展</a>
            <a target="_blank" href="" title="置业顾问">置业顾问</a>
        </p>
    </div>
    <div class="col-md-4">
        <h3 class="job-title">
            <a href="#">房地产</a>
        </h3>
        <p class="job-list">
            <a href="" target="_blank" class="company-name">新城</a>
            <a target="_blank" href="" title="客服经理">客服经理</a>
            <a target="_blank" href="" title="客户拓展">客户拓展</a>
            <a target="_blank" href="" title="置业顾问">置业顾问</a>
        </p>

        <p class="job-list">
            <a href="" target="_blank" class="company-name">新城</a>
            <a target="_blank" href="" title="客服经理">客服经理</a>
            <a target="_blank" href="" title="客户拓展">客户拓展</a>
            <a target="_blank" href="" title="置业顾问">置业顾问</a>
        </p>
    </div>
    <div class="col-md-4">
        <h3 class="job-title">
            <a href="#">房地产</a>
        </h3>
        <p class="job-list">
            <a href="" target="_blank" class="company-name">新城</a>
            <a target="_blank" href="" title="客服经理">客服经理</a>
            <a target="_blank" href="" title="客户拓展">客户拓展</a>
            <a target="_blank" href="" title="置业顾问">置业顾问</a>
        </p>

        <p class="job-list">
            <a href="" target="_blank" class="company-name">新城</a>
            <a target="_blank" href="" title="客服经理">客服经理</a>
            <a target="_blank" href="" title="客户拓展">客户拓展</a>
            <a target="_blank" href="" title="置业顾问">置业顾问</a>
        </p>
    </div>
    <div class="col-md-4">
        <h3 class="job-title">
            <a href="#">房地产</a>
        </h3>
        <p class="job-list">
            <a href="" target="_blank" class="company-name">新城</a>
            <a target="_blank" href="" title="客服经理">客服经理</a>
            <a target="_blank" href="" title="客户拓展">客户拓展</a>
            <a target="_blank" href="" title="置业顾问">置业顾问</a>
        </p>

        <p class="job-list">
            <a href="" target="_blank" class="company-name">新城</a>
            <a target="_blank" href="" title="客服经理">客服经理</a>
            <a target="_blank" href="" title="客户拓展">客户拓展</a>
            <a target="_blank" href="" title="置业顾问">置业顾问</a>
        </p>
    </div>
</div>
<div class="row margin-top-30">
    <div class="col-md-12"><h2 class="hotIndustry">热门职位</h2></div>
</div>
<div class="row">
<div class="col-md-4">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">经营管理类招聘（<span class="text-orange">15752</span>个职位）</h3>
        </div>
        <div class="panel-body">
            <ul class="job-position-list">
                <li class="clearfix">
                    <b>广州</b>
                    <span><a href="#" target="_blank">华南产业集团饲料片区总裁</a></span>
                    <i>70-100万</i>
                </li>

                <li class="clearfix">
                    <b>杭州</b>
                    <span><a href="#" target="_blank">事业部总经理</a></span>
                    <i>70-100万</i>
                </li>

                <li class="clearfix">
                    <b>广东省</b>
                    <span><a href="#" target="_blank">分部总经理</a></span>
                    <i>40-60万</i>
                </li>

                <li class="clearfix">
                    <b>上海</b>
                    <span><a href="#" target="_blank">Senior Strategy Director of Business and Marketing</a></span>
                    <i>35-50万</i>
                </li>

                <li class="clearfix">
                    <b>天津</b>
                    <span><a href="#">总经理</a></span>
                    <i>100-150万</i>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="col-md-4">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">经营管理类招聘（<span class="text-orange">15752</span>个职位）</h3>
        </div>
        <div class="panel-body">
            <ul class="job-position-list">
                <li class="clearfix">
                    <b>广州</b>
                    <span><a href="#" target="_blank">华南产业集团饲料片区总裁</a></span>
                    <i>70-100万</i>
                </li>

                <li class="clearfix">
                    <b>杭州</b>
                    <span><a href="#" target="_blank">事业部总经理</a></span>
                    <i>70-100万</i>
                </li>

                <li class="clearfix">
                    <b>广东省</b>
                    <span><a href="#" target="_blank">分部总经理</a></span>
                    <i>40-60万</i>
                </li>

                <li class="clearfix">
                    <b>上海</b>
                    <span><a href="#" target="_blank">Senior Strategy Director of Business and Marketing</a></span>
                    <i>35-50万</i>
                </li>

                <li class="clearfix">
                    <b>天津</b>
                    <span><a href="#">总经理</a></span>
                    <i>100-150万</i>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="col-md-4">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">经营管理类招聘（<span class="text-orange">15752</span>个职位）</h3>
        </div>
        <div class="panel-body">
            <ul class="job-position-list">
                <li class="clearfix">
                    <b>广州</b>
                    <span><a href="#" target="_blank">华南产业集团饲料片区总裁</a></span>
                    <i>70-100万</i>
                </li>

                <li class="clearfix">
                    <b>杭州</b>
                    <span><a href="#" target="_blank">事业部总经理</a></span>
                    <i>70-100万</i>
                </li>

                <li class="clearfix">
                    <b>广东省</b>
                    <span><a href="#" target="_blank">分部总经理</a></span>
                    <i>40-60万</i>
                </li>

                <li class="clearfix">
                    <b>上海</b>
                    <span><a href="#" target="_blank">Senior Strategy Director of Business and Marketing</a></span>
                    <i>35-50万</i>
                </li>

                <li class="clearfix">
                    <b>天津</b>
                    <span><a href="#">总经理</a></span>
                    <i>100-150万</i>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="col-md-4">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">经营管理类招聘（<span class="text-orange">15752</span>个职位）</h3>
        </div>
        <div class="panel-body">
            <ul class="job-position-list">
                <li class="clearfix">
                    <b>广州</b>
                    <span><a href="#" target="_blank">华南产业集团饲料片区总裁</a></span>
                    <i>70-100万</i>
                </li>

                <li class="clearfix">
                    <b>杭州</b>
                    <span><a href="#" target="_blank">事业部总经理</a></span>
                    <i>70-100万</i>
                </li>

                <li class="clearfix">
                    <b>广东省</b>
                    <span><a href="#" target="_blank">分部总经理</a></span>
                    <i>40-60万</i>
                </li>

                <li class="clearfix">
                    <b>上海</b>
                    <span><a href="#" target="_blank">Senior Strategy Director of Business and Marketing</a></span>
                    <i>35-50万</i>
                </li>

                <li class="clearfix">
                    <b>天津</b>
                    <span><a href="#">总经理</a></span>
                    <i>100-150万</i>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="col-md-4">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">经营管理类招聘（<span class="text-orange">15752</span>个职位）</h3>
        </div>
        <div class="panel-body">
            <ul class="job-position-list">
                <li class="clearfix">
                    <b>广州</b>
                    <span><a href="#" target="_blank">华南产业集团饲料片区总裁</a></span>
                    <i>70-100万</i>
                </li>

                <li class="clearfix">
                    <b>杭州</b>
                    <span><a href="#" target="_blank">事业部总经理</a></span>
                    <i>70-100万</i>
                </li>

                <li class="clearfix">
                    <b>广东省</b>
                    <span><a href="#" target="_blank">分部总经理</a></span>
                    <i>40-60万</i>
                </li>

                <li class="clearfix">
                    <b>上海</b>
                    <span><a href="#" target="_blank">Senior Strategy Director of Business and Marketing</a></span>
                    <i>35-50万</i>
                </li>

                <li class="clearfix">
                    <b>天津</b>
                    <span><a href="#">总经理</a></span>
                    <i>100-150万</i>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="col-md-4">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">经营管理类招聘（<span class="text-orange">15752</span>个职位）</h3>
        </div>
        <div class="panel-body">
            <ul class="job-position-list">
                <li class="clearfix">
                    <b>广州</b>
                    <span><a href="#" target="_blank">华南产业集团饲料片区总裁</a></span>
                    <i>70-100万</i>
                </li>

                <li class="clearfix">
                    <b>杭州</b>
                    <span><a href="#" target="_blank">事业部总经理</a></span>
                    <i>70-100万</i>
                </li>

                <li class="clearfix">
                    <b>广东省</b>
                    <span><a href="#" target="_blank">分部总经理</a></span>
                    <i>40-60万</i>
                </li>

                <li class="clearfix">
                    <b>上海</b>
                    <span><a href="#" target="_blank">Senior Strategy Director of Business and Marketing</a></span>
                    <i>35-50万</i>
                </li>

                <li class="clearfix">
                    <b>天津</b>
                    <span><a href="#">总经理</a></span>
                    <i>100-150万</i>
                </li>
            </ul>
        </div>
    </div>
</div>
</div>
<div class="row margin-top-30">
    <div class="col-md-12"><h2 class="hotIndustry">名企职位</h2></div>
</div>

<div class="row">
    <div class="col-md-4">
        <div class="thumbnail">
            <img data-src="holder.js/300x300" src="images/qy.png" alt="...">
            <div class="caption">
                <p class="job-list">
                    <a href="#" class="pull-left">PEM 工程师</a>
                    <a href="#" class="pull-right"><small>深圳</small></a>
                </p>
                <p class="job-list">
                    <a href="#" class="pull-left">PEM 工程师</a>
                    <a href="#" class="pull-right"><small>深圳</small></a>
                </p>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="thumbnail">
            <img data-src="holder.js/300x300" src="images/qy.png" alt="...">
            <div class="caption">
                <p class="job-list">
                    <a href="#" class="pull-left">PEM 工程师</a>
                    <a href="#" class="pull-right"><small>深圳</small></a>
                </p>
                <p class="job-list">
                    <a href="#" class="pull-left">PEM 工程师</a>
                    <a href="#" class="pull-right"><small>深圳</small></a>
                </p>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="thumbnail">
            <img data-src="holder.js/300x300" src="images/qy.png" alt="...">
            <div class="caption">
                <p class="job-list">
                    <a href="#" class="pull-left">PEM 工程师</a>
                    <a href="#" class="pull-right"><small>深圳</small></a>
                </p>
                <p class="job-list">
                    <a href="#" class="pull-left">PEM 工程师</a>
                    <a href="#" class="pull-right"><small>深圳</small></a>
                </p>
            </div>
        </div>
    </div>
</div>
</div>
<!-- jQuery -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- bootstrap.js -->
<script src="js/bootstrap.min.js"></script>
<!--jqFancyTransitions-->
<script src="js/jquery.cslider.js"></script>

<script type="text/javascript">
    $('#da-slider').cslider({
        current     : 0,
        bgincrement : 50,
        // increment the background position
        autoplay    : true,
        // slideshow on / off
        interval    : 4000
        // time between transitions

    });
</script>

<script type="text/javascript">
    var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
    document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fac45a0f68a119fbe4d1c4c3ac3044dbd' type='text/javascript'%3E%3C/script%3E"));
</script>
</body>
</html>
