---
layout: post
title: cms系列四：输赢成败，又争由人算
categories: ["cms"]
recommend: true
author: 里克
---

写在前面：

今天的标题语，出自金庸《天龙八部》的《洞仙歌》。词的主旨是纠结，

12款rails cms，<a href="http://blog.arunace.com/12-ruby-on-rails-content-management-systems-cms/" target="_blank">点击这里查看</a>，<a href="http://www.iteye.com/news/23222" target="_blank">中文翻译在这里</a>。继续最后四个cms的介绍。

<a href="https://github.com/wtg/flagship_docs" target="_blank">Flagship Docs</a>

这是一个文档管理系统，有搜索功能，我并未调试它的代码，不多做评价。从github的记录看，2011年至今，它为更新过。

<a href="http://www.caseincms.com/" target="_blank">Casein</a>

Casein是个干净的系统，按照Install说明安装之后，可以看到它比较清新的后台界面。

Casein的用法也很简单，自己scaffold一个资源，然后在后台去管理，至于其他的设计，还是自己按照Rails的要求去设计，总体的看，Casein适合做一些典型企业站。

<a href="/wp-content/uploads/snapshot-2012-06-14-02.20.34.png"><img src="/wp-content/uploads/snapshot-2012-06-14-02.20.34-300x151.png" alt="" width="300" height="151" /></a>


点击看大图，网上没有例子，大家自己调试吧，会发现一个错误。哎。


<a href="http://www.browsercms.org/" target="_blank">Browser CMS</a>

Browser CMS是为团队写作设计的，它使用了最新的Rails3.2运行环境，可以设置各种写作控制权限，按照workflow控制编写发布流程。

遗憾的是我gem没有安装成功它，提示连接错误，也没有google到它的demo。

<a href="https://github.com/svenfuchs/adva_cms" target="_blank">Adva cms</a>

Adva的特点没有多写，只有一个，它安装在vender里。这是一个不影响主体开发的设计，如果急需一个管理工具，可以试试Adva cms。

<a href="/wp-content/uploads/adva_cms_admin.jpg"><img src="/wp-content/uploads/adva_cms_admin-300x188.jpg" alt="" width="300" height="188" /></a>




到此，12款cms的介绍就结束了，可是我心中cms的设想还没结束。下一篇将继续讨论，我心中的cms。

最后，把《洞仙歌》的全文贴一下：

输赢成败，又争由人算？且自逍遥没人管。

奈天昏地暗、斗转星移。风骤紧、缥缈峰头云乱。

红颜弹指老、刹那芳华。

梦里真真语真幻。同一笑，到头万事俱空。

胡涂醉、情长计短。解不了、名缰系嗔贪。

却试问、几时把痴心断？

声明：本文属李玮原创作品，所引用的内容均来自互联网。转载请注明出处为“里克的自习室”，谢谢您对Rails的支持。
