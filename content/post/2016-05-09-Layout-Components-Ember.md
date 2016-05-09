---
date: '2016-05-09'
title: Layout Components in Ember
truncate: 80
slug: 2016/05/09/layout-components
draft: true
---

## Outline

```
1. What is a layout component
    a. Set up situation: ResultList component
    b. Highlight characteristics: Augment existing component, some Result format, with common behavior and layout
    c. What does the Ember Guide say?
2. Describe the technique
    a. Focus of the technique: Rendering a component by name, via `{{component "my-component"}}`
    b. Pass name of the existing component (the `Result`) to the `ResultList` to render dynamically
3. Review
    a. Satisfies requirements
    b. Hard to debug when things go wrong
    c. String-y
```