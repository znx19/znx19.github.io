# Ningxin's Homepage

This repository powers the personal website and academic portfolio for Ningxin Zhang. It is built with [Jekyll](https://jekyllrb.com/) and the [Academic Pages](https://github.com/academicpages/academicpages.github.io) theme.

## Repository Layout

- `_pages/`, `_posts/`, and `_courses/` are the content sources for the public site.
- `_layouts/`, `_includes/`, `_sass/`, `assets/`, and `images/` feed the public site output.

## Local Workflow

1. Install dependencies.
   ```bash
   make install
   ```

2. Serve the site locally.
   ```bash
   make serve
   ```

3. Build a production copy.
   ```bash
   make build
   ```

## Notes

- The public page layout, copy, and URLs are intended to remain stable.
- The homepage is driven by `_pages/about.md`, `_pages/cv.md`, `_pages/courses.html`, and `_pages/year-archive.html`.

## License

This project relies on the MIT-licensed Academic Pages theme.
