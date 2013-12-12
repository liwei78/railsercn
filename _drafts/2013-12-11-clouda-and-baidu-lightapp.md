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

clouda是为移动平台设计的，一大特点是多平台可同步更新。在这个[演示视频](http://www.infoq.com/cn/presentations/baidu-clouda-open-source-frameworks-and-cloud-integration-design-ideas)里，大家可以在自己的终端上玩聊天室。

clouda的另一个特点是搜索引擎的蜘蛛可以抓取内容。比如一个在线教育的app，内容是对搜索可见的。当然，这是个非典型的app，现在，百度叫它`轻应用`。而典型的安卓应用，百度叫它`移动应用`。（iOS的涅？）

有了以上两个特点，clouda可以开发出什么样的app呢？让我先进入到node的世界吧。

## 门钥匙

[clouda的文档](http://cloudajs.org/docs/step2_your_first_app)做的很用心，而且，它是中文的，按照上面的步骤，可以快速的做出一个小应用，或者，git clone 它的 example，看一看，玩一玩。但是对于刚入门node的我来说，它毕竟是个node程序，所以，我用这个命令来启动它。

```
node app.js
```


## 小惊喜

为了快速的体验成就感，我clone了[SpiderNews](http://cloudajs.org/docs/examples)的code，很快，我给它加上了新浪的体育新闻。

我把代码放到了自己的服务器上，[点这里可以看到](http://ali.wangboshi.net:8080/)。当然，我只满足了1分钟，我要为它再添加一些新闻，问题来了，刚我改的代码，他们是什么含义呢？

原来，它的关键之处是在controller里，它为view提供订阅的数据（Subscribe），在我的例子里，它返回的是externalPublishConfig.js中定义的源数据。

当然啦，照猫画虎的事情，适合初级的接触，不过clouda已经可以正确运行了。现在，我把最新的代码放到了自己的测试服务器上。

这个星期，BAE3.0正式开放了，它支持php，python，java，和nodejs，让我来玩一玩吧。

# BEA应用引擎

新版的百度的开发者平台，给人很时尚的感觉，真心不想再切换到旧版界面了。不过，要找到应用引擎的入口，需要先有一个`轻应用`。


## 轻应用，是什么？

就像我开头讲的，之前用clouda开发的的应用，现在，百度叫这种应用为轻应用。但在[百度的开发者平台](http://developer.baidu.com/)上，要创建一个轻应用，并不是直接部署clouda代码，而是叫`接入轻应用`。

接入有两种，一种是已有的webapp（注意哦，这是轻应用在本质上的称呼）接入，这里的关键之处是应用的URL和应用验证。这种应用，可以是web的移动版，比如手机百度上得众多轻应用，绝大多数都是媒体网站的移动版。只有极少数的轻应用，像滴滴打车轻应用，才是真正的webapp。那么，这种应用可以接入到轻应用里。

另一种方式，是没有轻应用。

这就怪了，我用clouda创建的应用，现在还不能提交哦，因为它既不算是真正的webapp，也还不具备移动版的设计。那么，我用[appbuilder](http://appbuilder.baidu.com/)创建一个吧。

在完成三步的创建后，我。。。拿到了一个静态页面的网站，这是一个移动版的网站，（我不知道如何下载它的源代码），那么，我可以把他接入到轻应用了吧？

现在，问题来了，这并不是我想要的。它只是一个展示功能，从内容配置上看，它的消息推送和消息回复，让我想到了微信。那么，这是轻应用么？如果是，我该如何下载它的代码，把我的clouda功能添加上呢？


## 轻应用怎么部署？

好了，为了让我的clouda代码能够放到BEA上去，我选择用appbuilder创建一个无用的空项目。然后点BEA应用引擎，申请nodejs支持。

在这里，我隐掉了另一个工具，siteapp，其实我最开始申请bae，就是在一个不相关的siteapp做出来的东西里申请的。这是不是有点奇怪呢？？倒是什么是轻应用，怎么接入轻应用？我希望百度能够将轻应用的概念，开发和接入更加的流程化，不要让工具来添乱。因为，工具产生的结果，貌似不是轻应用应该做的。

那么，轻应用，怎么用？

我有自己的clouda代码，我用siteapp和appbuilder可以做出两套不相干的东西，又拿不到他们的代码，无法添加我自己的逻辑。而后，我又得申请一个轻应用，再去选择应用引擎，部署我的逻辑。

在此强烈建议百度把这个环节弄清楚，既然开放轻应用，它应该是一个样子，即便是各种工具生成的快捷代码，也应该是可开放下载的，这样，殊途同归，我们用哪种手段，都可以开发一个轻应用，而后，部署到bae上。

## 轻应用可以做什么？

现在，作为一个初级的nodejs开发者，我打开本子，拿起笔，列出我要的目标：用nodejs的server端能力，为客户端提供数据。

轻应用强调端能力，那么，打开百度客户端，可以看到很多轻应用，比如，新闻，贴吧，打车，糗百，旅游，

不用安装了，就是个webapp。

按照百度百科对轻应用的解释，它

开发轻应用，快捷的维护代码。

# 一些例子

# 担忧

不要成为垃圾站点的停放场，为light app提供快捷的开发手段。

# 探讨

这些优点，ruby有么？




# 参考资料

[clouda_百度百科](http://baike.baidu.com/link?url=A7Re-Rhu27AWsQl7EL80PvmMhqEUM5PPjdq3WZVeK4zPg55tNy2u41YtN2v_3kp0zYIQhxQFrWwQvKoFcCO_a_)

[轻应用_百度百科](http://baike.baidu.com/link?url=P011LRgWyRm5MWw8WsxM65_RQB7fHhmg6rFz0ctl1-0pvGMuGGkIsvff--Z7zeJ31m-BTNR9BEZPzDrtrWH0V_)

[http://cloudajs.org/](http://cloudajs.org/)

[http://backbonejs.org/](http://backbonejs.org/)

[http://www.meteor.com/](http://www.meteor.com/)

[http://angularjs.org/](http://angularjs.org/)

[http://expressjs.com/](http://expressjs.com/)