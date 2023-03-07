# Photo Stream

_Photo Stream_ is a self hosted static website for your photos, with really goods loading performances, powered by [Cecil](https://cecil.app).

Demo: <https://photo-stream-demo.cecil.app>  
(hosted by [Netlify](https://www.netlify.com) and feeded by [Unsplash](https://unsplash.com))

## Features

- Responsives images & mobile friendly
- Images files optimized and lazy loaded
- Background filled with the dominant color
- Keyboard navigation
- Simple workflow: drag & drop and commit

## Install

First you should clone or download the [Git repository](https://github.com/Cecilapp/photo-stream.git), then download Cecil in it:

```bash
curl -LO https://cecil.app/cecil.phar
```

## Usage

### Add photos

Just drop image files in the `static/photos` directory.

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

### Configuration

You can define gallery title, baseurl, author, colors, thumbnails size, sort, etc. by editing [`config.yml`](config.yml) file.

### Preview locally

```bash
php cecil.phar serve -v --open
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

In the `translations` directory, copy `translations.en.yaml` to `translations.<language_code>.yaml` then translate each key.

## Deploy

First build the website:

```bash
php cecil.phar build -v
```

Then copy generated files from `_site` to your Web server.

Or try [Netlify](https://www.netlify.com):

[![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://github.com/Cecilapp/photo-stream)

## License

_Photo Stream_ is a free software distributed under the terms of the [MIT license](LICENSE).

[JS Lightbox](https://fslightbox.com/) is under the terms of the MIT license.

Photos are under the [Unsplash license](https://unsplash.com/license).

© [Arnaud Ligny](https://arnaudligny.fr)
