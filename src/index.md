---
layout: home
---

Welcome to [Bridgetown + Rails Nano](https://github.com/jaredcwhite/rails-nano)!

<button id="hello-rails">Say Hello, Rails:</button>

<rails-result class="box">
&nbsp;
</rails-result>

<br/>

<h2>Check Out Our Nifty Products!</h2>

{% for product in site.products %}
<p><a href="{{ product.url }}">{{ product.title }}</a></p>
{% endfor %}
