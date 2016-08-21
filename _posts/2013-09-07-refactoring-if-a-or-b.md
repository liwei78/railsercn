---
layout: post
title: "if a || b 的重构"
categories: "ruby"
tags: "重构"
author: 里克
---

当遇到 `if a || b` 的时候，我们要先看一下，a 和 b 到底是不是可以用区间来覆盖。

初中老师会让我们算，a < 3 或 a > 5 的那些整数。那么a一定是在这2个区间了，所以，if 中的那个，一定是两个区间中的一个。

这次我见到的代码是，

```ruby
if !a || a.user.name.nil?
```

这就不合符or的区间判断，or两边就不是一回事！！

写代码的小伙伴们，这是种坏习惯。

建议：

先从区间上看，再从条件上看，这不是一个or查询，而是一个嵌套的if判断。

我们先改动如下：


```ruby
if a.nil?
  gem
else
  if a.user.name.nil?
    gem
  end
end
```

但是既然写到重构板块，那么我们应该从测试的角度，再做一次优化。


```ruby
if a.nil?
  gem
else
  a_new_method
end

def a_new_method(aa)

  if aa.user.name.nil?
      gem
  end

end
```

这样，我们就可以测试a_new_method，是否完成了一个单元功能，再测试if是否完成了条件判断。

以上是一次很典型的重构加测试的实践。

里克，2013-9-7
