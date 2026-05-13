---
title: Projects
nav:
  order: 2
  tooltip: Software, datasets, and more
---

# {% include icon.html icon="fa-solid fa-wrench" %}Projects

Our standards development efforts target key gaps in data interoperability across the source-to-outcome (S2O) continuum.
Working with subject matter experts and stakeholder communities, we are expanding the Biolink Model and related frameworks to better represent chemical fate, exposure, dosimetry, and health outcome data in a way that supports integrated, machine-readable analyses.

{% include tags.html tags="poster, publication, resource, website" %}

{% include search-info.html %}

{% include section.html %}

## Featured

<div class="grid">
{% include list.html component="card" data="projects" filter="group == 'featured'" %}
</div>

{% include section.html %}

## More

{% include list.html component="card" data="projects" filter="!group" style="small" %}
