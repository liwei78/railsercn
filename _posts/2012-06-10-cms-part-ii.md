---
layout: post
title: cms系列二：塞下秋来风景异
categories: ["cms"]
recommend: true
---

写在前面：

标题来自范仲淹的《渔家傲》。古人的诗词里经常写到银河，可是现在的居住环境，连星星也只能看到最亮的那几颗了。

12款rails cms，<a href="http://blog.arunace.com/12-ruby-on-rails-content-management-systems-cms/" target="_blank">点击这里查看</a>，<a href="http://www.iteye.com/news/23222" target="_blank">中文翻译在这里</a>。继续按照它的罗列，来详细的分析下这些cms。当然，我不是个太规矩的人。

<a href="http://webiva.org/" target="_blank">webiva</a>

"Webiva是一个基于Rails开发的Web 2.0的开源网站构建系统，提供可扩展模块系统，允许轻松对功能进行扩展。"

每一款cms，都有它出生的来由，都有它服务的客户，这是它继续发展的动力。所以每个cms不是来解决cms面临的一切问题的。webiva就是这样，它界面很清新，或者叫卡通，管理上有比较清楚的按钮，这第一感觉，让它看起来更适合做学校，幼儿园的网站。

但是人家的目的不那么小家子气。它的几个特点，可视化编辑网站模版，快速的调整网站栏目结构和页面，支持更多的module，并且可以内建多个站点，并绑定各自的域名。按照它介绍里的说法，webiva是快速建站系统，而不是传统的cms。

<a href="/wp-content/uploads/files5.png"><img src="/wp-content/uploads/files5-300x210.png" alt="" width="300" height="210" /></a>


<a href="http://webiva.org/screenshots" target="_blank">点击这里，还有大量的网站截图</a>


webiva的作者是典型的技术流家庭，老婆做设计，老公做代码，webiva的想法来自2006年的micro-cms，项目1.0使用的是Rails2.3.5，2.0或许已经迁移到了Rails3上。

如果各位想深入的使用webiva，可以到它的开发论坛上，跟作者交流下，地址：<a href="http://www.webiva.net/forum" target="_blank">http://www.webiva.net/forum</a>

<a href="/wp-content/uploads/snapshot-2012-06-10-05.31.36.png"><img src="/wp-content/uploads/snapshot-2012-06-10-05.31.36-300x194.png" alt="" width="300" height="194" /></a>


不要着急，休息，休息一下


好，开始介绍下一个。

<a href="http://fdv.github.com/typo/" target="_blank">typo</a>

typo是一个强大的博客系统，从2005年至今，它可以算作是最古老的rails博客系统，它有自己的引擎，有很好的SEO优化，支持theme和插件扩展。

typo是很正统的博客系统，现在看上去就像是Rails里的wordpress，当然，wp越走越快。type 6.0使用的是Rails3.0.10，type6.1使用的是ruby1.9，并且是Rails3.0系列的最后一个。

typo的代码也是很值得仔细研究的，讲到这，想到了当时的另一套博客程序，<a href="http://www.mephistoblog.com/" target="_blank">mephistoblog</a>，它的代码也值得研究。但是现在看了一下它，还是停留在2011年的版本上，一年来没有什么改变，相比其他cms的活跃程度，mephisto真的是“长烟落日孤城闭”了。可能改叫大菠萝，或许会火吧。

typo和mephisto当时都提供了转移wp到自己平台的方法，也有很多Rails博客，至于用他们来制作企业级项目，我没有找到。可能他们只适合博客群体和Rails的Geek吧。

typo的demo在<a href="http://demo.typosphere.org/" target="_blank">这里</a>

<a href="/wp-content/uploads/20120610192321.png"><img src="/wp-content/uploads/20120610192321-300x145.png" alt="" width="300" height="145" /></a>


后台的模板，貌似5美元就可以买到



本篇介绍了两套cms，下一篇会有重量级Rails cms登场了。来，再为各位送上一首宋词：

姜夔，《扬州慢》

淳熙丙申正日，予过维扬。夜雪初霁，荠麦弥望。入其城则四壁萧条，寒水自碧，暮色渐起，戍角悲吟。予怀怆然，感慨今昔，因自度此曲。千岩老人以为有“黍离”之悲也。

淮左名都，竹西佳处，解鞍少驻初程。过春风十里，尽荠麦青青。自胡马窥江去后，废池乔木，犹厌言兵。渐黄昏，清角吹寒，都在空城。

杜郎俊赏，算而今重到须惊。纵豆蔻词工，青楼梦好，难赋深情。二十四桥仍在，波心荡冷月无声。念桥边红药，年年知为谁生？


评：

《白石道人歌曲》收词八十首，其中十七首带有曲谱。《扬州慢》、《杏花天影》、《姜凉犯》、《暗香》《疏影》、《徵招》、《角招》等十四首是他自创的词调和乐曲；三首是填词配曲的，内有一首填的是范成大的《玉梅令》。这十七首，每首定有宫调，并以宋代工尺字谱(与今流行的工尺谱有所不同)斜行注节，扣于字旁。

白石创制的词调《扬州慢》，是他成熟时期的代表作。孝宗淳熙三年(1176)冬，他二十二岁，自汉阳出游，途经金人两次蹂躏、惨遭兵燹的扬州，看到昔日繁华的商业都城，已是“市尘尽荠麦，号角吹宵寒”，更显得空荡凄凉。眼前的景象和爱国的情思，激起他强烈的感情，用警辟对比的词藻度成此曲，传为佳作。

姜白石一生困蹇，怀才不遇，他在饱经颠沛转徙的困顾生活后，嘉定元年（1208）病卒于临安(今杭州)水磨方氏馆旅邸。幸得友人捐助，始获就近安葬。

