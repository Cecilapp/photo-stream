# Photo Stream

A Photo Stream static website, powered by [Cecil](https://cecil.app) (and [Unsplash](https://unsplash.com)).

Demo: https://photo-stream-demo.cecil.app

## Install

### With Netlify

[![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://github.com/Cecilapp/photo-stream)

### Locally

```bash
curl -LO https://cecil.app/cecil.phar
```

## Usage

### Build and serve locally

```bash
php cecil.phar serve -v
```

### Add photos

Just drop files in the `static/photos` directory.

### Add details (optional)

For each photo you can add a title, an alternative text and the author name/URL, through the [`data/photos.yaml`](data/photos.yaml) file:

```yaml
<file basename>:
  title: "<photo title>"
  alt: "<alternative text>"
  author:
    name: <author name>
    url: <author URL>
```

### Localize (optional)

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
