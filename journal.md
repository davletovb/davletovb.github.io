---
layout: default
title: Journal
description: Notes on what I'm building and the questions behind it, from 2022 to today.
permalink: /journal/
---
# Journal

<ul class="dated">
{% for post in site.posts %}  <li><time datetime="{{ post.date | date: '%Y-%m-%d' }}">{{ post.date | date: "%-d %b %Y" }}</time><a href="{{ post.url | relative_url }}">{{ post.title | escape }}</a></li>
{% endfor %}</ul>
