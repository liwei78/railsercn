---
layout: post
title: "Rails Routes中的两件事"
description: "在看devise的源码过程中，发现Devise在做Routes Mapping时，使用了Rails自己的@constraints。于是查查文档，笔记两件事。"
category: "Rails"
tags: ['routes', 'constraints']
---

写在前面：在看devise的源码过程中，发现Devise在做Routes Mapping时，使用了Rails自己的@constraints。于是查查文档，笔记两件事。

一下内容来自 Ruby on Rails 4.0.1， ActionDispatch::Routing::Mapper::Scoping 。

位置：actionpack/lib/action_dispatch/routing/mapper.rb

# 第一件事：

这种写法很熟悉的。

```ruby
namespace "admin" do
  resources :posts, :comments
end
```

那么，访问`/posts`时，调用 `Admin::PostsController` 时，如何写呢？

```ruby
scope module: "admin" do
  resources :posts
end
```

或者

```ruby
resources :posts, module: "admin"
```

当然，反过来，访问 `/admin/posts` 时，调用 `PostsController`，就这么写：

```ruby
scope "/admin" do
  resources :posts
end
```

或者

```ruby
resources :posts, path: "/admin/posts"
```

# 第二件事：

如何限制访问？比如允许 `/posts/1.1` 访问，而禁止 `/posts/1`，那么代码如下：

```ruby
constraints(id: /\d+\.\d+/) do
  resources :posts
end
```

在其他的资源引用上，也可以做如下限制：

```ruby
resources :posts do
  constraints(post_id: /\d+\.\d+/) do
    resources :comments
  end
end
```

限制ip访问，比如 只允许 192.168.* 访问资源：

```ruby
constraints(ip: /192\.168\.\d+\.\d+/) do
  resources :posts
end
```

动态请求的匹配，比如下面的这个限制：

```ruby
constraints(lambda { |req| req.env["HTTP_USER_AGENT"] =~ /iPhone/ }) do
  resources :iphones
end
```

当然你也可以把它放到model里：

```ruby
class Iphone
  def self.matches?(request)
    request.env["HTTP_USER_AGENT"] =~ /iPhone/
  end
end
```

下面这句话有待验证，暂时不译：

An expected place for this code would be lib/constraints.

This class is then used like this:

```ruby
constraints(Iphone) do
  resources :iphones
end
```




