---
layout: page
title: "Articles"
subtitle: "Des articles pour tous."
ref: posts
lang: fr
permalink: /articles/
location: posts
---

<div class="header-page-image-posts">
    <div class="row">
        <div class="col-xs-12 slogan">
            Lisez, partagez, commentez des articles ...
        </div>
    </div>
</div>

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