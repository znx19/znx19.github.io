# Ningxin's Homepage

This is the personal website and academic portfolio for **Ningxin Zhang**, built using [Jekyll](https://jekyllrb.com/) and the [Academic Pages](https://github.com/academicpages/academicpages.github.io) theme.

## 🚀 Getting Started

### Prerequisites

- Ruby (2.7+)
- Bundler
- Jekyll

### Local Development

1. **Install Dependencies**:
   ```bash
   bundle install
   ```

2. **Run Locally**:
   ```bash
   bundle exec jekyll serve
   ```
   Access the site at `http://localhost:4000`.

### Content Management

- **Pages**: Edit markdown files in `_pages/`.
- **posts**: Create new posts in `_posts/`.
- **Publications**:
    - Edit `markdown_generator/publications.tsv`.
    - Run the python script or notebook in `markdown_generator/` to update markdown files in `_publications/`.

## 🛠 Project Structure

- `_config.yml`: Main site configuration.
- `_includes/` & `_layouts/`: HTML templates.
- `_sass/`: CSS styles.
- `assets/`: Images, scripts, and compiled CSS.

## 📄 License

This project relies on the **Academic Pages** theme, which is MIT Licensed.
