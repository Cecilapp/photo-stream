# Photo Stream

A Photo Stream static website, powered by [Cecil](https://cecil.app) (and [Unsplash](https://unsplash.com)).

Demo: https://photo-stream.cecil.app

## Install

[![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://github.com/Cecilapp/photo-stream)

### Locally

```bash
curl -LO <https://cecil.app/cecil.phar>
```

## Usage

### Build and serve locally

```bash
php cecil.phar serve -v
```

### Add photos

Just drop files in the `static/photos` directory.

### Alternative text and author

For each photo you can add an alternative text, and details about the author, through the [`data/photos.yaml`](data/photos.yaml) file:

```yaml
<file basename>:
  alt: "<alternative description>"
  author:
    name: <author name>
    url: <author URL>
```

### Localize

You can easily localize _Photo Stream_ in your language.

#### Configuration

`config.yml`:

```yaml
language: <language_code> # e.g.: fr
languages:
  - code: <language_code>
    locale: <locale_code> # e.g.: fr
```

#### Translation

Copy `translations.en.yaml` to `translations.<language_code>.yaml` then translate each key.

## License

_Photo Stream_ is a free software distributed under the terms of the [MIT license](LICENSE).

Photos under the [Unsplash license](https://unsplash.com/license).

© [Arnaud Ligny](https://arnaudligny.fr)
