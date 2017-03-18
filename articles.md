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
        <div class="col-xs-6">
            <a class="btn btn-white" href="/creer-article/">Créer un article</a>
        </div>
        <div class="col-xs-6">
            <a class="btn btn-green" href="https://goo.gl/forms/4Hs3YYuanEdzzsSv2">Soumettre un article</a>
        </div>
    </div>
</div>

<div class="list-posts">
    <ul class="no-style" style="text-align:center">
      {% assign posts = site.posts | sort: 'date' | reverse %}
      {% for post in posts %}
        <li> 
          <h1><a href="{{ post.url }}">{{ post.title | capitalize }}</a></h1>
            <span style="color:grey">{{ post.date | date: '%Y/%m/%d' }}</span> <br>
            <h4>{{ post.description }}</h4>
           <i>{{ post.author }}</i><br><br>
          {% for keyword in post.keywords %}
            <button>{{ keyword }}</button>
          {% endfor %}
        </li>
        <hr>
      {% endfor %}
    </ul>
 </div>