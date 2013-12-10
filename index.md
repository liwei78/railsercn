---
layout: page
title: Ruby/Rails笔记
---

<ul class="posts">
  {% for post in paginator.posts %}
    <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>


