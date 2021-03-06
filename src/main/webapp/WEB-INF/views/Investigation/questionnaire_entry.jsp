<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/19 0019
  Time: 下午 6:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <title>问卷信息录入</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="robots" content="noindex,nofollow">
<%--    <link rel="stylesheet" type="text/css" href="/Dwsurvey/resources/skin/base.css" />
    <link rel="stylesheet" type="text/css" href="/Dwsurvey/resources/skin/blue.css" />
    <link rel="stylesheet" type="text/css" href="/Dwsurvey/resources/skin/content.css" />--%>
    <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
   <%-- <script src="/static/jquery/jquery-1.9.1.js" type="text/javascript"></script>--%>
    <script type="text/javascript" src="/Dwsurvey/resources/script/configBase.js"></script>
    <script type="text/javascript" src="/Dwsurvey/resources/script/exam/exam.js"></script>
    <link type='text/css' rel='stylesheet' href='/Dwsurvey/resources/skin/base.css'></link>
    <link type='text/css' rel='stylesheet' href='/Dwsurvey/resources/skin/content.css'></link>
   <link type='text/css' rel='stylesheet' href='/Dwsurvey/resources/skin/blue.css'></link>
    <script language='javascript' type='text/javascript' src='/Dwsurvey/resources/script/jquery-ui.min.js'></script>
    <script language='javascript' type='text/javascript' src='/Dwsurvey/resources/script/dcselect.js'></script>
    <script language='javascript' type='text/javascript' src='/Dwsurvey/resources/script/layer/layer.js'></script>
   <script language='javascript' type='text/javascript' src='/Dwsurvey/resources/script/artTemplate/template.js'></script>
    <!--选择题-->
    <script type="text/html" id="drag_choice">
        <li class="ui-module items-questions">
            <div class="theme-type">
                <div class="module-menu">
                    <h4></h4>
                    <div class="module-ctrl">
                        <a href="javascript:void(0);" class="ui-up-btn" data-tisp="上移"><i class="icon-up"></i></a>
                        <a href="javascript:void(0);" class="ui-down-btn" data-tisp="下移"><i class="icon-down"></i></a>
                        <a href="javascript:void(0);" class="ui-clone-btn" data-tisp="复制"><i class="icon-clone"></i></a>
                        <a href="javascript:void(0);" class="ui-del-btn" data-tisp="删除"><i class="icon-del"></i></a>
                    </div>
                </div>
                <div class="ui-drag-area">
                    <div class="cq-title T_edit T_plugins" data-Tid="{{itmetid}}"><span style="font-size:16px;">{{if type==1}}单选题目标题{{else if type==2}}多选题目标题{{/if}}</span></div>
                </div>
                <div class="cq-items-content">
                    <ul class="cq-unset-list" data-checkType="{{type}}" data-nameStr="{{name}}">
                        {{each items as itemData i}}
                        <li><label class="input-check"><input data-checkbox="{{type}}" type="{{if type==1}}radio{{else if type==2}}checkbox{{/if}}" name="{{name}}" value="{{itemData.value}}"></label>
                            <div class="cq-answer-content T_edit T_plugins" data-Tid="{{itemData.tid}}">选项{{i+1}}</div>
                        </li>
                        {{/each}}
                    </ul>
                    <div class="cq-items-ctrl">
                        <a href="javascript:void(0);" class="ui-add-item-btn" data-tisp="添加"><i class="icon-add"></i></a>
                        <a href="javascript:void(0);" class="ui-batch-item-btn" data-tisp="批量添加"><i class="icon-addList"></i></a>
                        <a href="javascript:void(0);" class="ui-add-answer-btn" data-tisp="添加答案解析"><i class="icon-assignment"></i></a>
                    </div>
                </div>
            </div>
        </li>
    </script>
    <!--填空题-->
    <script type="text/html" id="drag_completion">
        <li class="ui-module items-questions">
            <div class="theme-type">
                <div class="module-menu">
                    <h4></h4>
                    <div class="module-ctrl">
                        <a href="javascript:void(0);" class="ui-up-btn" data-tisp="上移"><i class="icon-up"></i></a>
                        <a href="javascript:void(0);" class="ui-down-btn" data-tisp="下移"><i class="icon-down"></i></a>
                        <a href="javascript:void(0);" class="ui-clone-btn" data-tisp="复制"><i class="icon-clone"></i></a>
                        <a href="javascript:void(0);" class="ui-del-btn" data-tisp="删除"><i class="icon-del"></i></a>
                    </div>
                </div>
                <div class="ui-drag-area">
                    <div class="cq-title T_edit T_plugins" data-Tid="{{itmetid}}"><span style="font-size:16px;" data-checkbox="{{type}}">请输入填空标题</span></div>
                </div>
                <div class="cq-items-content">
                    <div class="describe-edit-content T_edit T_plugins" data-tid="{{items[0].tid}}"><span class="test" style="line-height: 1.6;12px;">请输入填空内容</span></div>
                </div>
            </div>
        </li>
    </script>
    <!--描述题-->
    <script type="text/html" id="drag_describe">
        <li class="ui-module items-questions">
            <div class="theme-type">
                <div class="module-menu">
                    <h4></h4>
                    <div class="module-ctrl">
                        <a href="javascript:void(0);" class="ui-up-btn" data-tisp="上移"><i class="icon-up"></i></a>
                        <a href="javascript:void(0);" class="ui-down-btn" data-tisp="下移"><i class="icon-down"></i></a>
                        <a href="javascript:void(0);" class="ui-clone-btn" data-tisp="复制"><i class="icon-clone"></i></a>
                        <a href="javascript:void(0);" class="ui-del-btn" data-tisp="删除"><i class="icon-del"></i></a>
                    </div>
                </div>
                <div class="ui-drag-area">
                    <div class="cq-title T_edit T_plugins" data-Tid="{{itmetid}}"><span style="font-size:16px;" data-checkbox="{{type}}">请输入描述题目标题</span></div>
                </div>
                <div class="cq-items-content">
                    <div class="describe-edit-content T_edit T_plugins" data-tid="{{items[0].tid}}"><span class="demo" style="line-height:12px;">请输入描述题内容</span></div>
                </div>
            </div>
        </li>
    </script>
    <script type="text/html" id="drag_T_edit">
        <div class="cq-into-edit">
            <div class="add-edit cq-edit-title" contenteditable="true">{{title}}</div>
        </div>
    </script>
    <script type="text/html" id="T_edit_plugins">
        <div class="edit-plug-box">
            <a href="javascript:void(0);"><i class="icon-picChoice"></i></a>
            <a href="javascript:void(0);"><i class="icon-title"></i></a>
        </div>
    </script>
    <script type="text/html" id="ui_additem_content">
        {{each items as itemData i}}
        <li><label class="input-check"><input type="{{if type==1}}radio{{else if type==2}}checkbox{{/if}}" name="{{name}}" value="{{itemData.value}}"></label>
            <div class="cq-answer-content T_edit T_plugins" data-Tid="{{itemData.tid}}">选项{{i+1+index}}</div>
        </li>
        {{/each}}
    </script>
    <script type="text/html" id="analysis_tmp">
        <textarea class="exam-textarea analysis_contx" placeholder="请在此填写答案解析"></textarea>
    </script>
    <script type="text/javascript">
        $(function() {
            exam.init();
            $("select").dcselect();
            $('#saveQuestion').on('click',function(){
                var dataBase={},questionItems=[];
                dataBase.topicName=$('#questionTitle').text();
                dataBase.questionExamTitle=$('#questionExamTitle').text();
                //封装所有题列表，遍历提取值analysis（答案）、题列表（数组对象）；
                $('.ui-questions-content-list').children('li').each(function(i){
                    var dataTx={},qListItems=[];
                    dataTx.QItemsTitle=$(this).find('.cq-title').text();
                    qListItems.push($(this).find('.test').html());
                    //封装单题，遍历提取值name、value、checkCurr（选中状态）；
                    $(this).find('ul.cq-unset-list').children('li').each(function(j){
                        var listItems={};
                        listItems.name=$(this).find('input').attr('name');
                        listItems.value=$(this).find('input').val();
                        listItems.checkCurr=$(this).find('input').prop('checked');


                        console.log($(this).find('describe-edit-content T_edit T_plugins').val()+"================");
                       /* alert($(this).find('.describe-edit-content T_edit T_plugins').val()+"================");
*/
                        qListItems.push(listItems)

                    });
                    dataTx.analysis=$(this).find('.analysis_contx').val()||0;
                    dataTx.qListItems=qListItems;
                    questionItems.push(dataTx);
                });
                dataBase.questionItems=questionItems;
                console.log(JSON.stringify(dataBase));
                alert(dataBase);
                console.log(dataBase);
                //将数据保存到数据库中

                for(var i = 0;i<dataBase.questionItems.length;i++){
                    dataBase.questionItems[i];

                }
                var road_url = '${ctx}/sys/InvestigationController/save';
                var param="{\"dataBase\":dataBase.,\"\":, };" ;
               /* $.ajax({
                    type: "POST",
                    url: road_url,
                    data:param,
                    dataType: "json",
                    success: function(date){

                    }
                });*/
            });
        });
    </script>
</head>

<body>

<!--主体框架开始-->
<div class="pagebox" id="pageContentId">
    <div class="home-desktop" id="desktop_scroll">
        <div style="width:100%; position: relative;">
            <div class="title">
                <div class="name left">问卷信息录入</div>
                <div class="function left">
                    <!--[&nbsp;<a href="javascript:;" onclick="definedLayer('/addTeacherData.html',{},'html');">添加</a>&nbsp;]-->
                </div>
                <div class="clear"></div>
            </div>
            <div class="condition-box conditionItems" style="width:985px;">
                <div class="condition-items">
                    <span class="condition-title">类型：</span>
                    <select>
                        <option>高中</option>
                        <option>初中</option>
                    </select>
                </div>
                <div class="condition-items">
                    <span class="condition-title">学科：</span>
                    <select>
                        <option>语文</option>
                        <option>数学</option>
                        <option>英语</option>
                        <option>化学</option>
                    </select>
                </div>
                <div class="condition-items">
                    <span class="condition-title">题类：</span>
                    <select>
                        <option>高考题</option>
                        <option>中考题</option>
                    </select>
                </div>
                <div class="condition-items">
                    <span class="condition-title">知识点：</span>
                    <select>
                        <option>集合的概念与表示方法</option>
                        <option>集合的基本运算</option>
                        <option>自定义</option>
                    </select>
                </div>
                <div class="clear"></div>
            </div>
            <div class="create-questions-content">
                <div class="exam-nav">
                    <div class="exam-item">
                        <h4 class="exam-item-title">常用题型<i class="icon-expand"></i></h4>
                        <ul class="exam-nav-list" id="ui_sortable_exam">
                            <li data-uid="1" data-tempId="drag_choice">
                                <a href="javascript:;" data-checkType="1"><i class="icon-singleChoice"></i>单选题</a>
                            </li>
                            <li data-uid="2" data-tempId="drag_choice">
                                <a href="javascript:;" data-checkType="2"><i class="icon-multipleChoice"></i>多选题</a>
                            </li>
                           <%-- <li data-uid="3" data-tempId="drag_choice" >
                                <a href="javascript:;" data-checkType="1" ><i class="icon-picChoice"></i>图片单选</a>
                            </li>
                            <li data-uid="4" data-tempId="drag_choice">
                                <a href="javascript:;" data-checkType="2"><i class="icon-picsChoice"></i>图片多选</a>
                            </li>--%>
                           <%-- <li data-uid="5" data-tempId="drag_completion">
                                <a href="javascript:;" data-checkType="1"><i class="icon-gapFilling"></i>单行填空</a>
                            </li>--%>
                            <li data-uid="6" data-tempId="drag_completion">
                                <a href="javascript:;" data-checkType="3"><i class="icon-multiRow"></i>填空题</a>
                            </li>
                            <li data-uid="7" data-tempId="drag_describe">
                                <a href="javascript:;" data-checkType="4"><i class="icon-describe"></i>描述说明</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!--出题-->
                <div class="create-questions">
                    <div class="questions-head-title">
                        <h4 class="h4-bg T_edit T-center" data-Tid="10001" id="questionTitle"><span style="font-size:18px;">--请输入问卷题目--</span></h4></div>
                    <table class="questions-items-title">
                        <tbody>
                        <tr>
                            <td class="module-menu">&nbsp;</td>
                            <td>
                                <div class="cq-title T_edit" data-Tid="10002" id="questionExamTitle"><span style="font-size:16px;">请选择问卷类型</span></div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <ul class="ui-questions-content-list"></ul>
                    <ul class="ui-foot-all-list"></ul>
                </div>
            </div>
            <div style="height:40px; margin: 20px 0; text-align: center;">
                <button type="submit" class="cotrlBtn exam-save-btn btnBlue" id="saveQuestion" style="height:40px;width: 140px; font-size:18px;">保存试题</button>
            </div>
        </div>
    </div>
</div>
<!--主体框架结束-->
</body>

</html>