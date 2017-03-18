---
layout: page
title: Posts
subtitle: Posts
ref: posts
lang: en
permalink: /posts/
location: posts
---

<div class="list-posts">
    <ul class="no-style">
      {% assign posts = site.posts | sort: 'date' | reverse %}
      {% for post in posts %}
        <li>
          {{ post.date | date: '%Y-%m-%d' }} - 
          <a href="{{ post.url }}">{{ post.title | capitalize }}</a>
          by {{ post.author }}.
          {% for keyword in post.keywords %}
            {{ keyword }};
          {% endfor %}
        </li>
        <hr>
      {% endfor %}
    </ul>
 </div>
