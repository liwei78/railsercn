---
layout: post
title: "Rack, 我忽视你了"
description: "一直被我忽视的Rack，它到底是什么？"
category: "Rails"
tags: ['rack', 'sinatra']
---
{% include JB/setup %}

# 什么是Rack

Rack provides a minimal, modular and adaptable interface for developing web applications in Ruby. By wrapping HTTP requests and responses in the simplest way possible, it unifies and distills the API for web servers, web frameworks, and software in between (the so-called middleware) into a single method call.

大意：Rack是个api，这个api会调用一个方法，它是call()。

# 什么是Rack Application？

A Rack application is an Ruby object (not a class) that responds to call. It takes exactly one argument, the environment and returns an Array of exactly three values: The status, the headers, and the body.

大意：Rack App需要提供一个方法，它就是call()。

# 一个误解：Rack不是web server

1. 一个浏览器请求
2. web server 将请求交给了Rack
3. Rack告诉了app
4. app想了想，告诉Rack我的返回结果是什么
5. Rack告诉web server 它要的结果
6. web server 告诉浏览器一个可解析的结果

# Rack为我做了什么？让Sprockets代表大伙发个言。

[看看Sprockets](https://github.com/sstephenson/sprockets)

之前我对Sprockets的概念完全被Rails给代替了，那么注意下面标注的文字，原来只是Rails替我做了额外的事情，我没有察觉。

You'll need an instance of the Sprockets::Environment class to access and serve assets from your application. Under Rails 3.1 and later, `YourApp::Application.assets is a preconfigured Sprockets::Environment instance`. For Rack-based applications, create an instance in config.ru.

那么，我如果自己单独使用Sprockets呢？

If you are using Sprockets with a Rack application, you will need to mount the environment yourself. A good way to do this is with the map method in config.ru:

{% highlight ruby %}
require 'sprockets'
map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'app/assets/javascripts'
  environment.append_path 'app/assets/stylesheets'
  run environment
end

map '/' do
  run YourRackApp
end
{% endhighlight %}

Sprockets 可以支持SCSS/SASS，LESS，CoffeeScript，甚至.scss.erb。

# 我能用Rack做什么？

注意那个不起眼的config.ru，我可以用它来写一个自己的Ruby框架。当然啦，这个框架现在什么也不做。

{% highlight ruby %}
# config.ru
require ::File.expand_path('../my_app.rb',  __FILE__) # 这句话copy自Rails，吼吼
run MyApp::Application
{% endhighlight %}

{% highlight ruby %}
# my_app.rb
module MyApp
  class Application
    def self.call(env)
      [200, {"Content-Type" => "text/html"}, ["<h1>It's My App</h1>", '<p>Yeah!!!</p>']]
    end
  end
end
{% endhighlight %}

> rackup -s WEBrick -p 1212

如果你看过[这篇文章](https://github.com/JuanitoFatas/Guides/blob/master/guides/edge-translation/rails-on-rack-zh_CN.md)，那么你会发现，我们熟知的Rails启动方式，还可以这样完成：

{% highlight ruby %}
# Rails.root/config.ru
require ::File.expand_path('../config/environment', __FILE__)

use Rack::Debugger
use Rack::ContentLength
run Rails.application
{% endhighlight %}

# 试试sinatra

写这篇文章的缘由，是在开发一个功能时，想到它可以包装成一个gem，而后有看了[Rails Guides: Getting Started with Engines](http://guides.rubyonrails.org/v3.2.13/engines.html)，[中文在这里](http://guides.ruby-china.org/engines.html)，这之后有了对Rails进行解构的想法，而后，便是更加清楚的意识到Rack的存在了。

那么，sinatra，和其他同类型的Rack-based app（非Rails），都是我们可以尝试的选择。

# 继续对Rails解构，我们还会发现什么？

当我们`rake middleware`的时候，我们可以看到Rails加载了哪些middleware，这些不是写在Gemfile里的，但是他们可以来自gem。这就有点奇怪的感觉了，不是么？

如果我们选择sinatra，选择一些自己要使用的gem，再挑选一些middleware，我们就可以搭建一个app了。比如，一个管理jekyll的app blog。


# 写在后面

这篇短文的意图，是想通过Rails的解构，对Rack和其他Rack-based App有一个清楚的了解，当我们选择功能方案的时候，会从另外一些角度，选择我们合适的实现途径。Rails给我们的贡献，就像Prem在RubyConf上讲到的，我们可以看看，把Rails的哪些东西可以放到我们的项目里。

这篇博文是两次完成的，因为期间要参加RubyConfChina，所以在之前把半成品放了出去，听听大家的意见。回来后发现了一些新的资源，一并补充进来。再次感谢提出意见的ruby-china.org的小伙伴们。

# 参考资料

[http://guides.rubyonrails.org/v3.2.13/rails_on_rack.html](http://guides.rubyonrails.org/v3.2.13/rails_on_rack.html)

[Ruby on Rack #1 - Hello Rack!](http://m.onkey.org/ruby-on-rack-1-hello-rack)

[Ruby on Rack #2 - The Builder](http://m.onkey.org/ruby-on-rack-2-the-builder)

[Rails meets Sinatra](http://m.onkey.org/2008/11/10/rails-meets-sinatra)

[Rails meets Sinatra #2 - Mix n' Match](http://m.onkey.org/rails-meets-sinatra-2-mix-n-match)

[What is ‘Rack’ in Ruby/Rails?](http://gauravchande.com/post/58760237018/what-is-rack-in-ruby-rails)

[Rack Doc](http://rack.rubyforge.org/doc/)

[sinatra](http://www.sinatrarb.com/)

[Rails on Rack](https://github.com/JuanitoFatas/Guides/blob/master/guides/edge-translation/rails-on-rack-zh_CN.md)

[(转载)Rails 與 Merb 合併背後的故事](http://railser.cn/blog/rails-and-merb/)

里克，2013年10月29日

转载请注明出处：里克的自习室 Railser.cn