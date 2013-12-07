---
layout: post
title: "Jekyll，和它的generateors"
description: ""
category: 日记
tags: []
---
{% include JB/setup %}

写在前面：在每篇开头写一些文字，是我的习惯。这次翻新我的博客，把全部的博客都导成了.textile格式，然后一篇篇的做了校对（未完成），其间发现我从07年到现在，只写了170多篇，且有朋友贡献的几十篇。自己真正原创的寥寥几篇。倒是一些闲言碎语很让我感动，毕竟，年头久了，有旧情。本来想把非技术的东西删掉，索性还是留着回味当时的心境吧。

第一次，用自己的编辑器，用一个全新的方式来写博客。说说这次的经历吧。

改版我的博客，已经打算很久了，这次动手是因为发现了Jekyll，这个名字奇怪，不过还算新鲜的东西。折腾了2天，终于搞定，至于细节，还要在接下来的时间去完善，比如，把bootstrap和bootswatch快捷的放入Jekyll site 里，快速的新建一个新的site，且不仅限于博客。

Jekyll流行因为github pages，创建的时候推荐了它。今天下午发现了很多同类功能的工具，来看看别人整理的static site generators.

原地址：http://nanoc.ws/about/#similar-projects

<table class="comparison">
<tbody><tr class="even">
<td><a href="http://github.com/botanicus/ace">Ace</a></td>
        <td>Ruby</td>
        <td><a href="http://github.com/botanicus/ace">botanicus/ace</a></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://github.com/posativ/acrylamid">acrylamid</a></td>
        <td>Python</td>
        <td><a href="http://github.com/posativ/acrylamid">posativ/acrylamid</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://awestruct.org/">awestruct</a></td>
        <td>Ruby</td>
        <td><a href="http://github.com/awestruct/awestruct">awestruct/awestruct</a></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://github.com/ap0calypse/bazinga">bazinga</a></td>
        <td>Perl</td>
        <td><a href="http://github.com/ap0calypse/bazinga">ap0calypse/bazinga</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://github.com/flatiron/blacksmith">Blacksmith</a></td>
        <td>Node.js</td>
        <td><a href="http://github.com/flatiron/blacksmith">flatiron/blacksmith</a></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://bitbucket.org/jek/blatter">Blatter</a></td>
        <td>Python</td>
        <td></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://www.blogofile.com/">Blogofile</a></td>
        <td>Python</td>
        <td><a href="http://github.com/EnigmaCurry/blogofile">EnigmaCurry/blogofile</a></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://tinytree.info/">Bonsai</a></td>
        <td>Ruby</td>
        <td><a href="http://github.com/benschwarz/bonsai">benschwarz/bonsai</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://github.com/koenbok/Cactus">Cactus</a></td>
        <td>Python</td>
        <td><a href="http://github.com/koenbok/Cactus">koenbok/Cactus</a></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://github.com/dz/chisel">Chisel</a></td>
        <td>Python</td>
        <td><a href="http://github.com/dz/chisel">dz/chisel</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://www.cliki.net/coleslaw">coleslaw</a></td>
        <td>Common Lisp</td>
        <td><a href="http://github.com/redline6561/coleslaw">redline6561/coleslaw</a></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://github.com/shazow/composer">Composer</a></td>
        <td>Python</td>
        <td><a href="http://github.com/shazow/composer">shazow/composer</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://pypi.python.org/pypi/cyrax">cyrax</a></td>
        <td>Python</td>
        <td><a href="http://github.com/piranha/cyrax">piranha/cyrax</a></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://github.com/cdn64/deplot">Deplot</a></td>
        <td>Ruby</td>
        <td><a href="http://github.com/cdn64/deplot">cdn64/deplot</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://github.com/46Bit/fairytale">Fairytale</a></td>
        <td>Ruby</td>
        <td><a href="http://github.com/46Bit/fairytale">46Bit/fairytale</a></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://github.com/nikcub/floyd">Floyd</a></td>
        <td>Python</td>
        <td><a href="http://github.com/nikcub/floyd">nikcub/floyd</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://fmpp.sourceforge.net/">FMPP</a></td>
        <td>Java</td>
        <td></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://github.com/blahed/frank">Frank</a></td>
        <td>Ruby</td>
        <td><a href="http://github.com/blahed/frank">blahed/frank</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="https://gitorious.org/fugitive">fugitive</a></td>
        <td>Shell</td>
        <td></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://github.com/piranha/gostatic">gostatic</a></td>
        <td>Go</td>
        <td><a href="http://github.com/piranha/gostatic">piranha/gostatic</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://github.com/mikoskinen/graze">Graze</a></td>
        <td>C#</td>
        <td><a href="http://github.com/mikoskinen/graze">mikoskinen/graze</a></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://github.com/xfire/growl">Growl</a></td>
        <td>Python</td>
        <td><a href="http://github.com/xfire/growl">xfire/growl</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://jaspervdj.be/hakyll/">Hakyll</a></td>
        <td>Haskell</td>
        <td><a href="http://github.com/jaspervdj/hakyll">jaspervdj/hakyll</a></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://hammerformac.com/">Hammer</a></td>
        <td>language-agnostic</td>
        <td></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://github.com/mkaz/hastie">Hastie</a></td>
        <td>Go</td>
        <td><a href="http://github.com/mkaz/hastie">mkaz/hastie</a></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://zespia.tw/hexo/">Hexo</a></td>
        <td>Node.js</td>
        <td><a href="http://github.com/tommy351/hexo">tommy351/hexo</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://github.com/hobix/hobix">Hobix</a></td>
        <td>Ruby</td>
        <td><a href="http://github.com/hobix/hobix">hobix/hobix</a></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://github.com/lakshmivyas/hyde">Hyde</a></td>
        <td>Python</td>
        <td><a href="http://github.com/lakshmivyas/hyde">lakshmivyas/hyde</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://github.com/mojombo/jekyll">Jekyll</a></td>
        <td>Ruby</td>
        <td><a href="http://github.com/mojombo/jekyll">mojombo/jekyll</a></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://github.com/jokull/jinjet">jinjet</a></td>
        <td>Python</td>
        <td><a href="http://github.com/jokull/jinjet">jokull/jinjet</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://github.com/drone/jkl">jkl</a></td>
        <td>Go</td>
        <td><a href="http://github.com/drone/jkl">drone/jkl</a></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://github.com/jaredhanson/kerouac">Kerouac</a></td>
        <td>Node.js</td>
        <td><a href="http://github.com/jaredhanson/kerouac">jaredhanson/kerouac</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://github.com/sandal/korma">Korma</a></td>
        <td>Ruby</td>
        <td><a href="http://github.com/sandal/korma">sandal/korma</a></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://lanyon.readthedocs.org/">Lanyon</a></td>
        <td>Python</td>
        <td></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://github.com/an0/Letterpress">Letterpress</a></td>
        <td>Python</td>
        <td><a href="http://github.com/an0/Letterpress">an0/Letterpress</a></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://github.com/petebrowne/machined">Machined</a></td>
        <td>Ruby</td>
        <td><a href="http://github.com/petebrowne/machined">petebrowne/machined</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://github.com/donmelton/magneto">Magneto</a></td>
        <td>Ruby</td>
        <td><a href="http://github.com/donmelton/magneto">donmelton/magneto</a></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://github.com/myfreeweb/markbox">Markbox</a></td>
        <td>Python</td>
        <td><a href="http://github.com/myfreeweb/markbox">myfreeweb/markbox</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://markdoc.org/">Markdoc</a></td>
        <td>Python</td>
        <td><a href="http://github.com/zacharyvoase/markdoc">zacharyvoase/markdoc</a></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://github.com/middleman/middleman">Middleman</a></td>
        <td>Ruby</td>
        <td><a href="http://github.com/middleman/middleman">middleman/middleman</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://mynt.mirroredwhite.com/">mynt</a></td>
        <td>Python</td>
        <td><a href="http://github.com/Anomareh/mynt">Anomareh/mynt</a></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://nanoc.stoneship.org/">nanoc</a></td>
        <td>Ruby</td>
        <td><a href="http://github.com/nanoc/nanoc">nanoc/nanoc</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://nikola.ralsina.com.ar/">Nikola</a></td>
        <td>Python</td>
        <td></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://pagegen.phnd.net/">Pagegen</a></td>
        <td>Bash</td>
        <td></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://github.com/ametaireau/pelican">Pelican</a></td>
        <td>Python</td>
        <td><a href="http://github.com/ametaireau/pelican">ametaireau/pelican</a></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://github.com/caolan/petrify">Petrify</a></td>
        <td>Node.js</td>
        <td><a href="http://github.com/caolan/petrify">caolan/petrify</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://phrozn.info">Phrozn</a></td>
        <td>PHP</td>
        <td><a href="http://github.com/farazdagi/phrozn">farazdagi/phrozn</a></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://bolt80.com/piecrust/">PieCrust</a></td>
        <td>PHP</td>
        <td><a href="http://github.com/ludovicchabant/piecrust">ludovicchabant/piecrust</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://inky.github.com/pilcrow/">Pilcrow</a></td>
        <td>Python</td>
        <td><a href="http://github.com/inky/pilcrow">inky/pilcrow</a></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://github.com/mdub/pith">Pith</a></td>
        <td>Ruby</td>
        <td><a href="http://github.com/mdub/pith">mdub/pith</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="https://bitbucket.org/obensonne/poole">poole</a></td>
        <td>Python</td>
        <td></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://github.com/laktek/punch">Punch</a></td>
        <td>Node.js</td>
        <td><a href="http://github.com/laktek/punch">laktek/punch</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://github.com/arthurk/pyll">Pyll</a></td>
        <td>Node.js</td>
        <td><a href="http://github.com/arthurk/pyll">arthurk/pyll</a></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="https://npmjs.org/package/quill">Quill</a></td>
        <td>Node.js</td>
        <td><a href="http://github.com/theycallmeswift/quill">theycallmeswift/quill</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://rubyforge.org/projects/rakeweb/">RakeWeb</a></td>
        <td>Ruby</td>
        <td></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://rassmalog.rubyforge.org/">Rassmalog</a></td>
        <td>Ruby</td>
        <td></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://github.com/fifthposition/rizzo">Rizzo</a></td>
        <td>Groovy</td>
        <td><a href="http://github.com/fifthposition/rizzo">fifthposition/rizzo</a></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://rog.rubyforge.org/">Rog</a></td>
        <td>Ruby</td>
        <td></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://github.com/felixge/node-romulus">romulus</a></td>
        <td>Node.js</td>
        <td><a href="http://github.com/felixge/node-romulus">felixge/node-romulus</a></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://rote.rubyforge.org/">Rote</a></td>
        <td>Ruby</td>
        <td></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://www.apeth.com/RubyFrontierDocs/default.html">RubyFrontier</a></td>
        <td>Ruby</td>
        <td><a href="http://github.com/mattneub/RubyFrontier">mattneub/RubyFrontier</a></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://ruhoh.com/">Ruhoh</a></td>
        <td>language-agnostic</td>
        <td><a href="http://github.com/ruhoh/ruhoh.rb">ruhoh/ruhoh.rb</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://sculpin.io/">Sculpin</a></td>
        <td>PHP</td>
        <td><a href="http://github.com/sculpin/sculpin">sculpin/sculpin</a></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://www.marco.org/secondcrack">Second Crack</a></td>
        <td>PHP</td>
        <td><a href="http://github.com/marcoarment/secondcrack">marcoarment/secondcrack</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://honza.ca/socrates/">Socrates</a></td>
        <td>Python</td>
        <td><a href="http://github.com/honza/socrates">honza/socrates</a></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://github.com/alvesjnr/speechhub">Speechhub</a></td>
        <td>Python</td>
        <td><a href="http://github.com/alvesjnr/speechhub">alvesjnr/speechhub</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://stasis.me/">Stasis</a></td>
        <td>Ruby</td>
        <td><a href="http://github.com/winton/stasis">winton/stasis</a></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://github.com/Ceasar/staticjinja">staticjinja</a></td>
        <td>Python</td>
        <td><a href="http://github.com/Ceasar/staticjinja">Ceasar/staticjinja</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://rubyforge.org/projects/staticmatic/">StaticMatic</a></td>
        <td>Ruby</td>
        <td></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://github.com/mindeavor/staticmatic2">StaticMatic2</a></td>
        <td>Ruby</td>
        <td><a href="http://github.com/mindeavor/staticmatic2">mindeavor/staticmatic2</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://staticweb.rubyforge.org/">StaticWeb</a></td>
        <td>Ruby</td>
        <td></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://github.com/sebastien/tahchee">Tahchee</a></td>
        <td>Python</td>
        <td><a href="http://github.com/sebastien/tahchee">sebastien/tahchee</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://www.loup-vaillant.fr/projects/ussm/">Ultra simple Site Maker</a></td>
        <td>Ocaml</td>
        <td></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://webby.rubyforge.org/">Webby</a></td>
        <td>Ruby</td>
        <td><a href="http://github.com/TwP/webby">TwP/webby</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://webgen.rubyforge.org/">webgen</a></td>
        <td>Ruby</td>
        <td></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://www.thewml.org/">Website Meta Language</a></td>
        <td>C and Perl</td>
        <td></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://jnordberg.github.com/wintersmith/">Wintersmith</a></td>
        <td>Node.js</td>
        <td><a href="http://github.com/jnordberg/wintersmith">jnordberg/wintersmith</a></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://github.com/mythmon/wok">wok</a></td>
        <td>Python</td>
        <td><a href="http://github.com/mythmon/wok">mythmon/wok</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="https://npmjs.org/package/yassg">yassg</a></td>
        <td>Node.js</td>
        <td><a href="http://github.com/sma/yassg">sma/yassg</a></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://github.com/jgm/yst">yst</a></td>
        <td>Haskell</td>
        <td><a href="http://github.com/jgm/yst">jgm/yst</a></td>
    </tr>
<tr></tr>
<tr class="even">
<td><a href="http://yurtcms.roberthahn.ca/">Yurt CMS</a></td>
        <td>Ruby</td>
        <td></td>
    </tr>
<tr></tr>
<tr class="odd">
<td><a href="http://www.zenspider.com/ZSS/Products/ZenWeb/">ZenWeb</a></td>
        <td>Ruby</td>
        <td><a href="http://github.com/seattlerb/zenweb">seattlerb/zenweb</a></td>
    </tr>
<tr></tr>
</tbody>
</table>


昨天用了 http://jekyllbootstrap.com/ 来美化我当前的代码，今天发现作者已经不再维护它，并且新搞了一个类似Jekyll的工具，[http://ruhoh.com/](http://ruhoh.com/)。

我的博客代码在 [https://github.com/liwei78/blog](https://github.com/liwei78/blog)

如果你还在看，我表示一下感谢。希望我在接下来的几天里，多写一些东西，因为，我辞职了。

2013年10月22日，里克


