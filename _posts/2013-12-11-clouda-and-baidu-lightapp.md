---
layout: post
title: "Clouda和百度轻应用（上篇）"
description: "在学习nodejs的过程中，发现了clouda框架，并且赶上了百度轻应用3.0公测，再此做以笔记，记录开发中的经验。"
category: "轻应用"
tags: ["clouda", "nodejs"]
recommend: true
---

写在前面：

辞掉工作后，有了很多时间来补充知识。在学习nodejs的时候，先后看了下backbone，meteor，angularjs，expressjs等一系列的框架。由于是初学，难免要看各种文档，这时候，发现了clouda，一个国产的node框架，文档是中文的，讲解过程很清楚，对进入nodejs领域帮助很大。

接受朋友的意见，将一篇长文分为上下两篇，方便手机阅读。同时有做了一点调整。update at 2013-12-17


# Clouda

clouda的百科上讲，它是基于nodejs的`webapp`开发框架。在这个[演示视频](http://www.infoq.com/cn/presentations/baidu-clouda-open-source-frameworks-and-cloud-integration-design-ideas)里，大家可以在自己的终端上玩聊天室，多端的同步更新是它的一大特点。

clouda的另一个特点是对搜索引擎可见。我的理解是，比如一个在线教育的app，百度可以检索到它里面的内容。

当然，这是个非典型的移动端app，现在，百度叫它[轻应用](http://baike.baidu.com/link?url=P011LRgWyRm5MWw8WsxM65_RQB7fHhmg6rFz0ctl1-0pvGMuGGkIsvff--Z7zeJ31m-BTNR9BEZPzDrtrWH0V_)。而典型的安卓应用，百度叫它`移动应用`。（iOS的涅？）

有了以上两个特点，clouda可以开发出什么样的app呢？让我先试一试。

## nodejs的门钥匙

[clouda的文档](http://cloudajs.org/docs/step2_your_first_app)做的很用心，而且，它是中文的。按照上面的提示步骤，我快速的做出一个小应用。接下来，我 clone 它的 todolist example，这是个界面很漂亮的设计，也让我体验到了web端和移动端的同步更新。

对于刚入门nodejs的我来说，我没有用它文档上的启动方式，它毕竟是个nodejs程序嘛，所以，我用这个命令来启动它。

```
node app.js
```

## 小惊喜

为了快速的体验成就感，我clone了[SpiderNews](http://cloudajs.org/docs/examples)的code，很快，我给它加上了新浪的体育新闻。

我把代码放到了自己的服务器上，[点这里可以看到](http://ali.wangboshi.net:8080/)。当然，我只满足了1分钟，我要为它再添加一些新闻，问题来了，刚才我改的代码，他们是什么含义呢？

原来，它的关键之处是在controller里，它为view提供订阅的数据（Subscribe），在我的例子里，C返回的是externalPublishConfig.js中定义的源数据。

当然啦，照猫画虎的事情，适合初级的接触，不过clouda已经可以正确运行了。现在，我把最新的代码放到了自己的测试服务器上。

在写这篇文章的时候，BAE3.0正式开放了，它除了支持php，python，java，还支持nodejs，让我来玩一玩吧。

[Clouda和百度轻应用（下篇）]({% post_url 2013-12-11-clouda-and-baidu-lightapp-part-ii %})


本文为里克原创作品，转载请注明出自“里克的自习室”，谢谢。

