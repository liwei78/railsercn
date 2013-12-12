---
layout: post
title: "Clouda和百度轻应用"
description: "在学习nodejs的过程中，发现了clouda框架，并且赶上了百度轻应用3.0公测，再此做以笔记，记录开发中的经验。"
category: "轻应用"
tags: ["clouda", "nodejs"]
recommend: true
---

写在前面：

辞掉工作后，有了很多时间来补充知识。在学习nodejs的时候，先后看了下backbone，meteor，angularjs，expressjs等一系列的框架。由于是初学，难免要看各种文档，这时候，发现了clouda，一个国产的node框架，文档是中文的，讲解过程很清楚，对进入nodejs领域帮助很大。

# Clouda

clouda的百科上讲，它是基于nodejs的`webapp`开发框架。在这个[演示视频](http://www.infoq.com/cn/presentations/baidu-clouda-open-source-frameworks-and-cloud-integration-design-ideas)里，大家可以在自己的终端上玩聊天室，多端的同步更新是它的一大特点。

clouda的另一个特点是对搜索引擎可见。我的理解是，比如一个在线教育的app，百度可以检索到它里面的内容。

当然，这是个非典型的移动端app，现在，百度叫它[轻应用](http://baike.baidu.com/link?url=P011LRgWyRm5MWw8WsxM65_RQB7fHhmg6rFz0ctl1-0pvGMuGGkIsvff--Z7zeJ31m-BTNR9BEZPzDrtrWH0V_)。而典型的安卓应用，百度叫它`移动应用`。（iOS的涅？）

有了以上两个特点，clouda可以开发出什么样的app呢？让我先试一试。

## nodejs的门钥匙

[clouda的文档](http://cloudajs.org/docs/step2_your_first_app)做的很用心，而且，它是中文的。按照上面的提示步骤，我快速的做出一个小应用。接下来，我 clone 它的 todolist example，这是个界面很漂亮的设计，也让我体验到了web端和移动端的同步更新。

对于刚入门node的我来说，我没有用它文档上的启动方式，它毕竟是个node程序嘛，所以，我用这个命令来启动它。

```
node app.js
```


## 小惊喜

为了快速的体验成就感，我clone了[SpiderNews](http://cloudajs.org/docs/examples)的code，很快，我给它加上了新浪的体育新闻。

我把代码放到了自己的服务器上，[点这里可以看到](http://ali.wangboshi.net:8080/)。当然，我只满足了1分钟，我要为它再添加一些新闻，问题来了，刚才我改的代码，他们是什么含义呢？

原来，它的关键之处是在controller里，它为view提供订阅的数据（Subscribe），在我的例子里，C返回的是externalPublishConfig.js中定义的源数据。

当然啦，照猫画虎的事情，适合初级的接触，不过clouda已经可以正确运行了。现在，我把最新的代码放到了自己的测试服务器上。

在写这篇文章的时候，BAE3.0正式开放了，它除了支持php，python，java，还支持nodejs，让我来玩一玩吧。

# BEA应用引擎

新版的百度的开发者平台，给人很时尚的感觉，真心不想再切换到旧版界面了。不过，要找到BAE的入口，还需要费一些时间。


## 轻应用，是什么？

要使用BAE，首先，我需要有一个`轻应用`。

就像我开头讲的，之前用clouda开发的的应用，现在，百度叫它为`轻应用`。但在[百度的开发者平台](http://developer.baidu.com/)上，要创建一个轻应用，并不是直接部署clouda代码，而是叫`接入轻应用`。

这里真实搞文字游戏，轻应用，应用，移动应用，webapp，appbuilder，已经在控制台消失不见的siteapp，真心希望百度统一一下称呼。

接入有两种，一种是已有的webapp（注意哦，这是轻应用在本质上的称呼）接入，这里的关键之处是应用的URL和应用验证。这种应用，就是web的移动版，


另一种接入方式，是没有轻应用，用[AppBuilder](http://appbuilder.baidu.com/)创建一个。

考虑到我用clouda创建的应用，两个条件都不太符合，那么，我就用`AppBuilder`创建一个吧。

在完成三步的创建后，我。。。拿到了一个静态页面的网站，这是一个移动版的网站，我不知道如何下载它的源代码。难道我不能改动它的代码么？

但是，这并不是我想要的。它只是一个静态功能的展示，从内容配置上看，它的消息推送和消息回复，让我想到了微信。打开[http://lightapp.duapp.com/?appid=9981](http://lightapp.duapp.com/?appid=9981)，我看到了这个送餐的界面。

好吧，我已经在新版的控制台看到它了，并且找到了应用引擎BAE3.0的入口。

补充：现在，系统可以直接创建一个应用了。避免上面的混淆，不过它叫“创建应用”，它创建的是轻应用么？ 不知道它什么时候出现的，总之，我没有点它。

这里反馈一个跳转bug：

三张图

之后，竟然跳到了http://appbuilder.baidu.com/。既然是控制台管理，就不要回到别的页面了，对于一个新概念，新工具，操作的连贯，有助于理解。（开始的时候，我的确不适应。）

## 轻应用，怎么部署？

好了，为了让我的clouda代码能够放到BEA上去，我在刚才的送餐应用里，点BEA应用引擎，申请nodejs支持。

在这里，我隐掉了另一个工具，siteapp.

在我最开始申请bae的时候，我用siteapp，为我的网站创建了一个移动版，申请了接入，现在，它也可以在我的控制台看到，它也可以申请bae，这也就是为什么我找不到之前申请的bae的入口原因了，因为bae放到了轻应用里，而轻应用使用不同的工具，创建的结果不同。

这里建议轻应用可以开放不同工具产生的代码，方便在自动生成的代码上进行修改。否则，每个工具做自己的代码，增加了维护成本。


拿到我的bae部署地址后，http://readnews.duapp.com/可以访问到一个简单的界面了。在发布设置里，我把自己的clouda代码push上去，可以确提示

```
Counting objects: 919, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (755/755), done.
error: RPC failed; result=22, HTTP code = 411
fatal: The remote end hung up unexpectedly
Writing objects: 100% (916/916), 5.53 MiB | 638 KiB/s, done.
Total 916 (delta 88), reused 888 (delta 73)
fatal: The remote end hung up unexpectedly
```

这个工程文件是用clouda创建的，有18M。可是，这是为什么呢？？

好了，走路哪有不踩到石头的，让我继续看看，轻应用，怎么用？

## 轻应用，怎么用？

先清理一下思路吧。

siteapp和appbuilder创建的，是网站的移动版，clouda创建的代码适合web和移动版。这里，百度把它们三个小伙伴，都放到了轻应用这个大概念里，并且在百度手机app里来展现它们。

那么，要让我的应用也进到轻应用的列表里，我要让它们是移动版可展示的，数据互动，可以用clouda或者nodejs来完成。我个人更喜欢ruby，也听说bae即将支持ruby，这样我的开发选择更多了。

进入百度轻应用，里面大多数还是新闻阅读类，最近几天的正式开放，使它增加了一些新的类型，比如内蒙古旅游，糗友百科，和语音朗读等等。


# 未来的轻应用

既然移动版的app就是轻应用了，我想随着时间的推移，越来越多的轻应用会出现在百度的列表中，这种对搜索结果可见的应用，必然会影响移动端的搜索结果，目前看，百度app更重视移动端app的优先展示，那么，未来的百度app又要成为垃圾app的主阵地呢？

我想轻应用绝不是这种目标，从clouda的端能力和[GMU](http://gmu.baidu.com/)看，轻应用可以提供更多的终端api能力，比如语音录入，摄像头拍照，坐标等等功能，都可以进入到轻应用的端能力范围，那么制作一个轻应用的微信，qq，美图秀秀，再想到clouda的多端同步特点，

一个百度app，可以把微信，qq一样的轻应用装进来，这真的像它描述的那样，“轻”应用了。

# 探讨

写到这里，ruby可以做些什么呢？

轻应用得到百度的支持，在百度app中，轻应用是客户端，用js和html5就可以制作，ruby可以作为他们的generator来提供便捷的开发。在server端，ruby和nodejs比较，自然有各自的优势，在性能允许的情况下，ruby可以使用众多gem，开发出支付，订购，交友，事务处理等功能。ruby可以发挥自身的dsl能力，开发出更酷的应用。

我想下一步，可以探讨下ruby在端开发上的技术。

# 结尾

在学习nodejs的时候，接触到了百度轻应用，也借此对移动开发做一个了解。设想，如果轻应用和微信公共账号进行同样的功能，在开发上需要哪些准备呢？这个作为思考题吧。

# 参考资料

[clouda_百度百科](http://baike.baidu.com/link?url=A7Re-Rhu27AWsQl7EL80PvmMhqEUM5PPjdq3WZVeK4zPg55tNy2u41YtN2v_3kp0zYIQhxQFrWwQvKoFcCO_a_)

[轻应用_百度百科](http://baike.baidu.com/link?url=P011LRgWyRm5MWw8WsxM65_RQB7fHhmg6rFz0ctl1-0pvGMuGGkIsvff--Z7zeJ31m-BTNR9BEZPzDrtrWH0V_)

[http://cloudajs.org/](http://cloudajs.org/)

[http://backbonejs.org/](http://backbonejs.org/)

[http://www.meteor.com/](http://www.meteor.com/)

[http://angularjs.org/](http://angularjs.org/)

[http://expressjs.com/](http://expressjs.com/)