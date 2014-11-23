<%--
  Created by IntelliJ IDEA.
  User: tgj
  Date: 2014/11/14
  Time: 14:49
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
      <link rel="stylesheet" href="css/index/validate.css">
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
                  <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                  <h4 class="modal-title" id="myModalLabel">用户登陆</h4>
              </div>
              <div class="modal-body">
                  <form role="form">
                      <div class="form-group">
                          <label for="name">用户名:</label>
                          <input name="name" id="name" class="form-control" type="text" placeholder="请输入用户名" autofocus/>
                      </div>
                      <div class="form-group">
                          <label for="password">密码:</label>
                          <input type="password" id="password" class="form-control" name="password" placeholder="请输入密码"/>
                      </div>
                      <div class="form-group text-center">
                          <div class="row">
                              <div class="col-sm-4 col-sm-push-2">
                                  <button type="submit" class="btn btn-success" >登 陆</button>
                              </div>
                              <div class="col-sm-4 col-sm-push-2">
                                  <button type="button" class="btn btn-danger" data-dismiss="modal">取 消</button>
                              </div>
                          </div>
                      </div>
                  </form>
              </div>
          </div>
      </div>
  </div>

  <%--注册--%>
  <div class="modal fade" id="reg-form" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
          <div class="modal-content">
              <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                  <h4 class="modal-title">用户注册</h4>
              </div>
              <div class="modal-body">
                   <form role="form">
                       <div class="form-group">
                            <label for="reg_name">用户名</label>
                            <input type="text" name="reg_name" class="form-control" id="reg_name" placeholder="请输入用户名" >
                        </div>

                       <div class="form-group">
                           <label for="reg_password">密码:</label>
                           <input type="password" name="reg_password" class="form-control" id="reg_password" placeholder="请输入密码">
                       </div>

                       <div class="form-group">
                           <label for="reg_configPassword">确认密码:</label>
                           <input type="password" name="reg_configPassword" class="form-control" id="reg_configPassword" placeholder="请再次输入密码"/>
                       </div>

                       <div class="form-group">
                           <label for="reg_email">邮箱:</label>
                           <input type="email" name="reg_email" class="form-control" id="reg_email" placeholder="请输入邮箱"/>
                       </div>

                       <div class="form-group">
                           <label for="reg_phone">联系电话:</label>
                           <input type="text" name="reg_phone" class="form-control" id="reg_phone" placeholder="请输入手机或者电话号码">
                       </div>

                       <div class="form-group text-center">
                           <div class="row">
                               <div class="col-sm-4 col-sm-push-2">
                                   <button type="submit" class="btn btn-success" >注册</button>
                               </div>
                               <div class="col-sm-4 col-sm-push-2">
                                   <button type="button" class="btn btn-danger" data-dismiss="modal">取消</button>
                               </div>
                           </div>
                       </div>
                   </form>
              </div>
          </div>
      </div>
  </div>


  <!--最顶端的导航栏-->
  <nav class="navbar navbar-default navbar-static-top" role="navigation">
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
                          <li><a href="job.html">认证服务</a></li>
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
              <ul class="nav navbar-nav navbar-right">
                  <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown">购物车 <span class="badge">0</span> <span
                              class="caret"></span></a>
                  </li>
                  <form class="navbar-form navbar-left" role="search">
                      <button class="btn btn-success" data-toggle="modal" data-target="#login-form" type="button">登陆</button>
                      <button class="btn btn-danger" type="button" data-toggle="modal" data-target="#reg-form">注册</button>
                  </form>
              </ul>
          </div>
      </div>
  </nav>
  <nav class="navbar navbar-static-top" style="z-index: 999;" role="navigation">
      <div class="container">
          <div class="row">
              <div class="col-md-5"><img src="images/logo.png" alt="好订单"/></div>
              <div class="col-md-7">
                  <div class="col-md-10">
                      <ul class="nav nav-pills nav-justified" role="tablist">
                          <li role="presentation" class="active"><a
                                  style="border-bottom-left-radius: 0;border-bottom-right-radius: 0;" href="#">工 厂</a></li>
                          <li role="presentation"><a href="#">订 单</a></li>
                          <li role="presentation"><a href="#">样 品</a></li>
                      </ul>
                      <div class="input-group">
                          <div class="form-group has-feedback">
                              <input type="text" class="form-control text-center" style="border-radius: 0;border-color: #428bca;">
                              <span class="glyphicon glyphicon-search form-control-feedback" style="left: 0;color: #428bca;"></span>
                          </div>
                <span class="input-group-btn">
                  <button class="btn btn-tae-info" type="button"> 搜 索</button>
                </span>
                      </div>
                      <ul class="nav-type-list">
                          <li><a href="#">工作服</a></li>
                          <li><a href="#">普通衬衫</a></li>
                          <li><a href="#">休闲衬衫</a></li>
                          <li><a href="#">T恤衫</a></li>
                          <li><a href="#">运动服</a></li>
                          <li><a href="#">裤子</a></li>
                          <li><a href="#">短裙</a></li>
                          <li><a href="#">连衣裙</a></li>
                          <li><a href="#">休闲裤</a></li>
                      </ul>
                  </div>
                  <div class="col-md-2">
                      <a class="text-search-tip" href="#" style="text-decoration: none;"><i class="fa fa-file-text-o text-warning"></i> 发布订单</a>
                  </div>
              </div>
          </div>
      </div>
  </nav>
  <nav class="navbar navbar-blue navbar-static-top" style="margin-bottom: 0;" role="navigation">
      <div class="container">
          <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                  <span class="sr-only"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
              </button>
          </div>
          <div id="order-nav" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                  <li class="order-active"><a href="#">首 页</a></li>
                  <li><a href="#about">找 订 单</a></li>
                  <li><a href="#contact">找 工 厂</a></li>
                  <li><a href="#contact">好款定制</a></li>
                  <li><a href="#contact">厂货直销</a></li>
                  <li><a class="cloth-mark" href="#contact">面料市场</a></li>
                  <li><a href="#contact">淘 小 单</a></li>
                  <li><a href="#contact">资 讯</a></li>
                  <li><a href="#contact">商 圈</a></li>
              </ul>
              <ul class="nav navbar-nav navbar-right">
                  <li><a class="news" href="../navbar/">担保交易</a></li>
                  <li><a class="active" href="./">供应商服务</a></li>
                  <li><a href="job.html">招 聘</a></li>
              </ul>
          </div><!--/.nav-collapse -->
      </div>
  </nav>
  <div class="container">
  <div class="row">
  <div class="col-md-12" id="banner-img">
      <div class="login-form">
          <div class="login-tip">
              <span><i class="fa fa-bullhorn"></i> 公告 : 工厂警惕！用高预付款作诱...</span>
          </div>
          <div class="login-box">
              <div class="panel panel-default">
                  <div class="panel-body">
                      <div class="login-interface first">
                          <h4>发单入口</h4>
                          <ul>
                              <li>新建询价单<em class="fa fa-chevron-right"></em></li>
                              <li>管理询价单<em class="fa fa-chevron-right"></em></li>
                              <li>我的询价篮<em class="fa fa-chevron-right"></em></li>
                          </ul>
                      </div>
                      <div class="login-interface">
                          <h4>接单入口</h4>
                          <ul>
                              <li>新建询价单<em class="fa fa-chevron-right"></em></li>
                              <li>管理询价单<em class="fa fa-chevron-right"></em></li>
                              <li>我的询价篮<em class="fa fa-chevron-right"></em></li>
                          </ul>
                      </div>
                  </div>
              </div>
          </div>
          <div class="login-footer">
              <button type="button" class="btn-tae btn-warning"> 免 费 注 册 </button>
              <button type="button" class="btn-tae btn-warning">登 陆</button>
          </div>
      </div>
      <div id="sliderShowHolder">
          <img src="images/banner/bg1.jpg" alt="<i>真实订单 面对面洽谈</i>"/>
          <img src="images/banner/bg2.jpg" alt="<i>会员服务限量特惠</i>"/>
          <img src="images/banner/bg3.jpg" alt="<i>轻松接单 仅需三步</i>"/>
          <img src="images/banner/bg4.jpg" alt="<i>名企采购-1001夜童话</i>"/>
      </div>
  </div>
  <div class="col-md-8">
      <div class="panel panel-default">
          <div class="panel-body">
              <h4 class="pull-left">
                  <strong>最新发布订单</strong>
                  <h5 class="pull-right">
                      <span class="text-info">我也要发单</span>
                      <span class="small">更多订单</span> <i class="fa fa-arrow-circle-o-right more"></i>
                  </h5>
              </h4>
              <table class="table table-hover">
                  <thead class="tae-table-head">
                  <tr>
                      <th>品 名</th>
                      <th>订单类型</th>
                      <th>订单数量</th>
                      <th>发单地区</th>
                      <th>发布日期</th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                      <td>
                          <span class="tae-table-tr tr-green">梭织服装</span>
                          <span class="text-info">亲子装 皮拼接针织...</span>
                      </td>
                      <td>经销单</td>
                      <td>200 件</td>
                      <td>浙江 温州</td>
                      <td>今天</td>
                  </tr>
                  <tr>
                      <td>
                          <span class="tae-table-tr tr-orange">梭织服装</span>
                          <span class="text-info">亲子装 皮拼接针织...</span>
                      </td>
                      <td>经销单</td>
                      <td>200 件</td>
                      <td>浙江 温州</td>
                      <td>今天</td>
                  </tr>
                  <tr>
                      <td>
                          <span class="tae-table-tr tr-green">梭织服装</span>
                          <span class="text-info">亲子装 皮拼接针织...</span>
                      </td>
                      <td>经销单</td>
                      <td>200 件</td>
                      <td>浙江 温州</td>
                      <td>今天</td>
                  </tr>
                  <tr>
                      <td>
                          <span class="tae-table-tr tr-orange">梭织服装</span>
                          <span class="text-info">亲子装 皮拼接针织...</span>
                      </td>
                      <td>经销单</td>
                      <td>200 件</td>
                      <td>浙江 温州</td>
                      <td>今天</td>
                  </tr>
                  <tr>
                      <td>
                          <span class="tae-table-tr tr-green">梭织服装</span>
                          <span class="text-info">亲子装 皮拼接针织...</span>
                      </td>
                      <td>经销单</td>
                      <td>200 件</td>
                      <td>浙江 温州</td>
                      <td>今天</td>
                  </tr>
                  <tr>
                      <td>
                          <span class="tae-table-tr tr-orange">梭织服装</span>
                          <span class="text-info">亲子装 皮拼接针织...</span>
                      </td>
                      <td>经销单</td>
                      <td>200 件</td>
                      <td>浙江 温州</td>
                      <td>今天</td>
                  </tr>
                  <tr>
                      <td>
                          <span class="tae-table-tr tr-green">梭织服装</span>
                          <span class="text-info">亲子装 皮拼接针织...</span>
                      </td>
                      <td>经销单</td>
                      <td>200 件</td>
                      <td>浙江 温州</td>
                      <td>今天</td>
                  </tr>
                  <tr>
                      <td>
                          <span class="tae-table-tr tr-orange">梭织服装</span>
                          <span class="text-info">亲子装 皮拼接针织...</span>
                      </td>
                      <td>经销单</td>
                      <td>200 件</td>
                      <td>浙江 温州</td>
                      <td>今天</td>
                  </tr>
                  <tr>
                      <td>
                          <span class="tae-table-tr tr-green">梭织服装</span>
                          <span class="text-info">亲子装 皮拼接针织...</span>
                      </td>
                      <td>经销单</td>
                      <td>200 件</td>
                      <td>浙江 温州</td>
                      <td>今天</td>
                  </tr>
                  <tr>
                      <td>
                          <span class="tae-table-tr tr-orange">梭织服装</span>
                          <span class="text-info">亲子装 皮拼接针织...</span>
                      </td>
                      <td>经销单</td>
                      <td>200 件</td>
                      <td>浙江 温州</td>
                      <td>今天</td>
                  </tr>
                  <tr>
                      <td>
                          <span class="tae-table-tr tr-green">梭织服装</span>
                          <span class="text-info">亲子装 皮拼接针织...</span>
                      </td>
                      <td>经销单</td>
                      <td>200 件</td>
                      <td>浙江 温州</td>
                      <td>今天</td>
                  </tr>
                  <tr>
                      <td>
                          <span class="tae-table-tr tr-orange">梭织服装</span>
                          <span class="text-info">亲子装 皮拼接针织...</span>
                      </td>
                      <td>经销单</td>
                      <td>200 件</td>
                      <td>浙江 温州</td>
                      <td>今天</td>
                  </tr>
                  </tbody>
              </table>
              <h5>更多订单</h5>
              <h6>
                  <span class="small">按地区 : </span>
                  广州  |  上海  |  宁波  |  杭州  |  深圳  |  金华  |  苏州  |  绍兴  |  东莞  |  北京
              </h6>
              <h6>
                  <span class="small">按产品： </span>
                  梭织面料  |  普通针织  |  薄料服装  |  普通梭织  |  薄料服装  |  针织面料  |  牛仔服装  |  箱包/皮具  |  内衣内裤
              </h6>
          </div>
      </div>
  </div>
  <div class="col-md-4">
      <div class="panel panel-default">
          <div class="panel-body">
              <h4>新用户手册</h4>
              <div class="user-guide">
                  <ul class="userbook gray songti">
                      <li><small>[注册]</small> <a href="#">如何注册好订单账号？</a></li>
                      <li><small>[发单]</small> <a href="#" target="_blank" rel="nofollow">如何新建询价单？</a></li>
                      <li><small>[发单]</small> <a href="#" target="_blank" rel="nofollow">如何邀请服装加工厂报价？</a></li>
                      <li><small>[接单]</small> <a href="#" target="_blank" rel="nofollow">如何申请服装订单？</a></li>
                      <li><small>[接单]</small> <a href="#" target="_blank" rel="nofollow">如何让客户找到我？</a></li>
                  </ul>
              </div>
              <br>
              <h4>好订单特色</h4>
              <div class="user-guide">
                  <ul class="userbook gray songti">
                      <li><i class="fa fa-heart-o"></i>  <a href="#">如何注册好订单账号？</a></li>
                      <li><i class="fa fa-user"></i>  <a href="#" target="_blank" rel="nofollow">如何新建询价单？</a></li>
                      <li><i class="fa fa-video-camera"></i>  <a href="#" target="_blank" rel="nofollow">如何邀请服装加工厂报价？</a></li>
                      <li><i class="fa fa-comment-o"></i>  <a href="#" target="_blank" rel="nofollow">如何申请服装订单？</a></li>
                      <li><i class="fa fa-list-ol"></i>  <a href="#" target="_blank" rel="nofollow">如何让客户找到我？</a></li>
                  </ul>
              </div>
              <br>
              <h4>成功案例<span class="small pull-right">更多<i class="fa fa-arrow-circle-o-right more"></i></span> </h4>
              <div class="media">
                  <a class="media-left" href="#">
                      <img src="images/shop.jpg" alt="成功案例">
                  </a>
                  <div class="media-body">
                      <h4 class="media-heading">
                          <strong>游先生   成功接单</strong>
                          <small class="pull-right">
                              <i class="fa fa-arrow-circle-o-left more"></i> <i class="fa fa-arrow-circle-o-right more"></i>
                          </small>
                      </h4>
                      我们是广州的一家服装加工厂，是一家拥有二十几年历史的老厂，主要生产牛仔服装、休闲裤和普通厚料服装等产品。大家都知道广州的服装工厂多如牛毛... <span class="text-info">[详情]</span>
                  </div>
              </div>
          </div>
      </div>
  </div>
  <div class="col-md-12">
      <div class="tae-breadcust"></div>
  </div>
  <div class="col-md-8">
      <div class="panel panel-default">
          <div class="panel-body">
              <h4>服装加工厂
                <span class="pull-right">
                  <button class="btn btn-warning" type="button">马上入住</button>
                  <small>更多工厂 <i class="fa fa-arrow-circle-o-right more"></i></small>
                </span>
              </h4>
              <div class="panel-content">
                  <div class="col-md-6">
                      <h3><strong class="text-warning">47,809 </strong><strong class="small"> 家服装加工厂</strong></h3>
                      <h3 class="pull-right text-think"><small>来自全国 31 个省市</small></h3>
                      <br><br>
                      <p>清加工 40083 | 经销 22993 | 自营进出口 7479</p>
                      <p>梭织38250 | 针织22483 | 皮革4286 | 毛衫2294 | 服饰1647 | 家纺1005 | 裘皮880 | 纺织405</p>
                      <img src="images/area.png" alt=""/>
                  </div>
                  <div class="col-md-6">
                      <h4>热门区域</h4>
                      <div class="form-group tae-city">
                          <button class="btn btn-warning">
                              <strong class="text-info">长三角 <small class="tae-small">1235家工厂</small></strong>
                          </button>
                          <button class="btn btn-warning">
                              <strong class="text-info">长三角 <small class="tae-small">1235家工厂</small></strong>
                          </button>
                          <button class="btn btn-warning">
                              <strong class="text-info">长三角 <small class="tae-small">1235家工厂</small></strong>
                          </button>
                          <button class="btn btn-warning">
                              <strong class="text-info">长三角 <small class="tae-small">1235家工厂</small></strong>
                          </button>
                      </div>
                      <div class="media">
                          <a class="media-left" href="#">
                              <img src="images/shop.jpg" alt="...">
                          </a>
                          <div class="media-body">
                              <h4 class="media-heading text-info">广 东</h4>
                              <p>广州7815 东莞2332 深圳1684 佛山937 中山936 汕头432 惠州236 江门216</p>
                          </div>
                      </div>
                      <div class="media">
                          <a class="media-left" href="#">
                              <img src="images/shop.jpg" alt="...">
                          </a>
                          <div class="media-body">
                              <h4 class="media-heading text-info">广 东</h4>
                              <p>广州7815 东莞2332 深圳1684 佛山937 中山936 汕头432 惠州236 江门216</p>
                          </div>
                      </div>
                      <div class="media">
                          <a class="media-left" href="#">
                              <img src="images/shop.jpg" alt="...">
                          </a>
                          <div class="media-body">
                              <h4 class="media-heading text-info">广 东</h4>
                              <p>广州7815 东莞2332 深圳1684 佛山937 中山936 汕头432 惠州236 江门216</p>
                          </div>
                      </div>
                      <p><strong>上海</strong>1561  北京 1105  福建 泉州 680 1561  北京 1105  福建 泉州 680</p>
                      <p><srong>湖北 武汉 514  天津 458</srong></p>
                      <p>
                    <span >
                      <strong>湖北</strong> 武汉 514  天津 458</span>
                      </p>
                      河北 保定 418 石家庄 343 江西 赣州 395 南昌 386 九江 374 安徽 安庆 386 合肥 327  四川 成都 339

                  </div>
              </div>
          </div>
      </div>
  </div>
  <div class="col-md-4 tae-identify">
      <h4>最新认证企业</h4>

      <div class="panel panel-defualt">
          <div class="panel-body tae-tag">
              <div class="col-md-8">
                  好订单网委托具备相关资质的第三方认证公司独立进行认证，并出具详细认证报告 <span class="text-info">了解详情 >></span>
              </div>
              <div class="col-md-4"></div>
          </div>
      </div>

      <div class="panel panel-defualt">
          <div class="panel-body">
              <div class="col-md-8">
                  <p class="text-info">山东迪翔服装有限公司</p>
                  <p class="small">普通梭织厚料服装,牛仔服...</p>
                  <p class="text-success">已通过资质认证</p>
              </div>
              <div class="col-md-4"></div>
          </div>
      </div>

      <div class="panel panel-defualt">
          <div class="panel-body">
              <div class="col-md-8">
                  <p class="text-info">山东迪翔服装有限公司</p>
                  <p class="small">普通梭织厚料服装,牛仔服...</p>
                  <p class="text-success">已通过资质认证</p>
              </div>
              <div class="col-md-4"></div>
          </div>
      </div>

      <div class="panel panel-defualt">
          <div class="panel-body">
              <div class="col-md-8">
                  <p class="text-info">山东迪翔服装有限公司</p>
                  <p class="small">普通梭织厚料服装,牛仔服...</p>
                  <p class="text-success">已通过资质认证</p>
              </div>
              <div class="col-md-4"></div>
          </div>
      </div>

  </div>
  </div>
  </div>
  <!-- jQuery -->
  <script src="js/jquery-1.11.1.min.js"></script>
  <%--jquery.form--%>
  <script src="js/jquery-form.js"></script>
  <%--validate--%>
  <script src="js/jquery.validate.min.js"></script>
  <%--metadata--%>
  <script src="js/jquery.metadata.2.1.js"></script>
  <!-- bootstrap.js -->
  <script src="js/bootstrap.min.js"></script>
  <!--jqFancyTransitions-->
  <script src="js/jqFancyTransitions.1.8.min.js"></script>

  <script src="js/index/index.js"></script>

  <script type="text/javascript">
      $(function(){
          var wh = $('#banner-img').width();
          $(window).resize(function() {
              wh = $('#banner-img').width();
          });
          $('#sliderShowHolder').jqFancyTransitions({width:wh, height: 370 });
      });
  </script>
  <script type="text/javascript">
      var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
      document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fac45a0f68a119fbe4d1c4c3ac3044dbd' type='text/javascript'%3E%3C/script%3E"));
  </script>
  </body>
</html>
