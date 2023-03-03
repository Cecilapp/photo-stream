# Photo Stream

_Photo Stream_ is a self hosted static website for your photos, with really goods loading performances, powered by [Cecil](https://cecil.app).

Demo: <https://photo-stream-demo.cecil.app>  
(hosted by [Netlify](https://www.netlify.com) and feeded by [Unsplash](https://unsplash.com))

## Install

First you should clone or download the [Git repository](https://github.com/Cecilapp/photo-stream.git), then download Cecil in it:

```bash
curl -LO https://cecil.app/cecil.phar
```

## Usage

### Preview locally

```bash
php cecil.phar serve -v
```

### Add photos

Just drop files in the `static/photos` directory.

### Add details (optional)

For each photo you can add a title, an alternative text and the author name/URL, through the [`data/photos.yaml`](data/photos.yaml) file:

```yaml
<file basename>: # without file extension
  title: "<photo title>"
  alt: "<alternative text>"
  author:
    name: <author name>
    url: <author URL>
```

### Localize

You can easily localize _Photo Stream_ in your language.

#### Add languages

`config.yml`:

```yaml
language: <language_code> # e.g.: fr
languages:
  - code: <language_code>
    locale: <locale_code> # e.g.: fr_FR
```

#### Add translations

Copy `translations.en.yaml` to `translations.<language_code>.yaml` then translate each key.

## Deploy

First build the website:

```bash
php cecil.phar build -v
```

Then copy the `_site` on your favorite Web server.

### With Netlify

[![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://github.com/Cecilapp/photo-stream)

## License

_Photo Stream_ is a free software distributed under the terms of the [MIT license](LICENSE).

[JS Lightbox](https://fslightbox.com/) is under the terms of the MIT license.

Photos are under the [Unsplash license](https://unsplash.com/license).

© [Arnaud Ligny](https://arnaudligny.fr)
