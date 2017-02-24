            <div class="row">
                <div class="col-lg-12">
                    <ol class="breadcrumb">
                        <li><a href="{{pBean.catUrl}}">Home</a>
                        </li>
                        <li class="active"><a href="{{pBean.url}}">{{pBean.productName}}</a></li>
                    </ol>
                    <h1>{{mbean.p_title}}</h1>
                </div>
            </div>
            <!-- /.row -->

            <!-- Content Row -->

            <!-- /.row -->
            <div class="row">
                <div class="col-lg-3 ">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="simg">
                                <a href="{{pBean.url}}" title="{{pBean.productName}}">
                                    <img class="img img-responsive" src="{{pBean.imgLink}}" alt="{{pBean.productName}}">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="row">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="col-lg-12">
                                    <div class="row">
                                        <div class="col-lg-12 col-xs-12">
                                            <h3>{{pBean.productName}}</h3>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-2 col-xs-6">
                                            <h3><span class="">Rs. {{pBean.newPrice}}</span></h3>
                                        </div>
                                        <div class="col-lg-2 col-xs-6">
                                            <a href="{{pBean.sellerUrl}}" target="_blank" rel="nofollow" class="btn btn-lg btn-info" style="margin-top:10px; padding: 10px" rel="nofollow" >Go to store</a>
                                        </div>
                                    </div>
                                    <h4>Product Features:</h4>    
                                    <div class="row">
                                         <div class="info col-lg-6 col-xs-12" ng-repeat="(key, value) in pBean.gFeatureMap">
                                         <table class="table">
                                         <tr ng-repeat="val in value">
                                         <td ng-repeat="spval in val.split('#')"> 
                                          <p ng-if="$index==0" ng-bind-html="spval"></p>
                                          <b ng-if="$index==1">{{spval}}</b>
                                          <p ng-if="$index==2">{{spval}}</p>
                                          
                                          </td>
                                         </tr> 
                                          </table>
                                        </div>
                                        <div class="info col-lg-4 hidden-xs hidden-lg">
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-info" style="margin-bottom: 8px;">View More Details</button>   
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12 col-xs-6">
                                            <h4>Product at Glance</h4>
                                            <div class="row">
                                                <div ng-repeat="(key, pListBean) in pBean.pListDesc" class="col-lg-12 col-xs-12">
                                                    <p><a href="${pageContext.request.contextPath}/{{pListBean.url}}" ng-bind-html="pListBean.pdesc">
                                                    </a></p>
                                                        
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clear"></div>


                </div>     
            </div>
            <div class="row">
                <div class="col-lg-9">
                    <div class="panel panel-default">
                        <h4 class="head_bdr">Price of {{pBean.productName}} in India</h4>
                        <div class="panel-body">
                            <div ng-repeat="(key, pb) in pList" class="row">
                                <div class="col-xs-6 col-lg-5">{{pb.productName}}</div>
                                <div class="col-xs-3 col-lg-2">Rs.{{pb.newPrice}}</div>
                                <div class="col-xs-3"><a href="{{pb.sellerUrl}}" target="_blank" rel="nofollow"><img src="${pageContext.request.contextPath}/res/{{pb.retailerLogo}}" title="{{pb.retailer}}" width="100"></a></div>
                                
                                <div class="col-lg-2 hidden-xs"><a href="{{pb.sellerUrl}}" target="_blank" class="btn btn-info" style="margin-bottom:10px;" rel="nofollow" >Go to store</a></div>
                            </div>
                            <div class="clear"></div>
                            
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div id="descBox" class="sub_inner_box border">
                                <h4 class="head_bdr">Overview of {{pBean.productName}}</h4>
                                {{pBean.pdesc}}
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3"  style="padding:0px;">
                    <div class="panel panel-default" >
                    <div class="panel-heading mdlarge-text">Popular Lists</div>
                                     <div class="panel-body">
                            <ul  class="list-unstyled">
                            <li ng-repeat="(key, pb) in catList"> <a href='{{pb.url}}'>{{pb.productName}}</a></li>
                            </ul>
                        </div>
                </div>
                </div>
            </div>
            <div class="row">
                <div ng-repeat="(fGroup,value) in generateMap" class="col-lg-6">

                    <div class="panel panel-default">
                        <div class="panel-heading mdlarge-text">
                            {{fGroup}}
                        </div>
                        <div class="panel-body">
                            <div ng-repeat="(fkey,features) in value" class="row">
                                <div class="col-xs-6">
                                    <strong>{{features.substring(1, features.lastIndexOf("#"))}} :</strong> 
                                </div>    
                                <div class="col-xs-6 ">
                                    {{features.substring(features.lastIndexOf("#")+1)}}
                                </div>    
                            </div>
                            
                        </div>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="simg">
                        <a href="#/{{pBean.url}}" title="{{pBean.productName}}">
                            <h3>Alternatives for {{pBean.productName}}</h3>
                        </a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div ng-repeat="(key, pb) in alternateList" class="col-lg-3 col-xs-12 row-eq-height">
                    <div class="simg">
                        <a href="${pageContext.request.contextPath}/#/{{pb.pUrl}}" title="{{pb.productName}}">
                            <img class="img img-responsive" style="max-height: 200px" src="{{pb.imgLink}}" alt="{{pb.productName}}">
                        </a>
                    </div>
                    <h4 class="text-center"><a href=" ${panelgeContext.request.contextPath}/#/{{pb.pUrl}}" title="{{pb.productName}}">{{pb.productName}} </a></h4>
                    <p class="text-center">Rs.{{pb.newPrice}}</p>
                    <table class="table" ng-repeat="(key, value) in pb.gFeatureMap" >
                           <tr ng-repeat="val in value">
                                         <td ng-repeat="spval in val.split('#')"> 
                                          <p ng-if="$index==0" ng-bind-html="spval"></p>
                                          <b ng-if="$index==1">{{spval}}</b>
                                          <p ng-if="$index==2">{{spval}}</p>
                                       </td>
                           </tr> 
                  </table>
                </div>
                
            </div>
            <!-- Footer -->
