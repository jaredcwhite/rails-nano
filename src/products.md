---
layout: page
title: Products
---

<h2>Check Out Our Nifty Products!</h2>

{% for product in site.products %}
<p><a href="{{ product.url }}">{{ product.title }}</a></p>
{% endfor %}
