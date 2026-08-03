---
layout: single
title: "Research"
permalink: /research/
author_profile: true
classes: academic-home
---

My research interests are in macroeconomic theory and international trade.

{% assign research_projects = site.data.research.projects %}
{% if research_projects and research_projects.size > 0 %}
## Current Research

<div class="research-list">
{% for project in research_projects %}
  <article class="research-item">
    <h3>{{ project.title }}</h3>
    {% if project.coauthors %}<p class="research-item__meta">With {{ project.coauthors }}</p>{% endif %}
    {% if project.status %}<p class="research-item__status">{{ project.status }}</p>{% endif %}
    {% if project.summary %}<p>{{ project.summary }}</p>{% endif %}
    {% if project.paper or project.slides or project.code %}
    <p class="research-item__links">
      {% if project.paper %}<a href="{{ project.paper }}">Paper</a>{% endif %}
      {% if project.slides %}<a href="{{ project.slides }}">Slides</a>{% endif %}
      {% if project.code %}<a href="{{ project.code }}">Code</a>{% endif %}
    </p>
    {% endif %}
  </article>
{% endfor %}
</div>
{% endif %}
