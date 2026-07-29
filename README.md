# DIL Manual GitHub page source

This website uses a Jekyll template. The github.io page is automatically updated whenever pull requests are merged into this branch.

## Building and previewing your site locally

Requires Ruby >= 3.0 and Bundler. From the root directory of the site:

1.  Run `bundle install --path vendor/bundle` (installs gems into `vendor/`, already gitignored, no `sudo` needed).

2.  Run `bundle exec jekyll serve --config _config.yml,_config_dev.yml --livereload` to build your site and preview it at `localhost:4000/guides/`.

    The built site is stored in the directory `_site`.

`_config_dev.yml` is a local-only override (gitignored, never committed) that swaps production's `remote_theme` for the vendored `theme` gem so the local build doesn't hit the network. It's layered on top of `_config.yml` via the `--config` flag above — `_config.yml` itself should never need manual edits.

----

- Jekyll: https://jekyllrb.com
- Just the Docs: https://just-the-docs.github.io/just-the-docs/
- GitHub Pages: https://docs.github.com/en/pages
- Bundler: https://bundler.io
