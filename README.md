# Photo Stream

_Photo Stream_ is a self hosted static website for your photos, with really goods loading performances, powered by [Cecil](https://cecil.app).

![Screenshot](/docs/screenshot.png)

Demo: <https://photo-stream-demo.cecil.app> (hosted by [Netlify](https://www.netlify.com) and fed by [Unsplash](https://unsplash.com)).

## Features

- Responsives images & mobile friendly
- Files optimized and lazy loaded
- Rich content caption
- Image placeholder (low quality or dominant color)
- Keyboard navigation
- Direct download button
- Simple workflow: drag & drop and commit

## Install

> PHP 8.1+ and [Cecil](https://cecil.app/download/) 8.0+ are required.

First you should clone or download the [Git repository](https://github.com/Cecilapp/photo-stream.git), or run `composer create-project cecil/photo-stream myproject`.

The repository come with a default version of `cecil.phar`, so you can you use it immediately, or you can download the latest release throught the following command:

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
  title: <photo title>
  alt: <alternative text>
  author:
    name: <author name>
    url: <author URL>
```

### Configuration

You can define gallery title, baseurl, author, colors, thumbnails size, sort, etc. by editing [`config.yml`](config.yml) file:

```yaml
photo:
  style:
    color:
      background: black
      text: white
    img:
      height: 300px
      margin: 2px
  sort: asc
  size:
    thumbnail: 640
    full: 1920
  placeholder: image # image, color or false
```

### Preview locally

You can double-click on the command shortcut:

- _preview.command_ on macOS
- _preview.cmd_ on Windows

Or run the following command in your terminal:

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

Then copy generated files in `_site` to your Web server.

Or use a provider:

[![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://github.com/Cecilapp/photo-stream) [![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https%3A%2F%2Fgithub.com%2FCecilapp%2Fphoto-stream&project-name=photo-stream&repository-name=photo-stream&demo-title=Photo%20Stream&demo-description=Super%20simple%20self%20hosted%20photo%20stream%2C%20powered%20by%20Cecil.&demo-url=https%3A%2F%2Fphoto-stream-demo.cecil.app&demo-image=https%3A%2F%2Fgithub.com%2FCecilapp%2Fphoto-stream.cecil.app%2Fraw%2Fmain%2Fassets%2Fpreview.png)

## License

_Photo Stream_ is a free software distributed under the terms of the [MIT license](LICENSE).

[PhotoSwipe](https://photoswipe.com) is under the terms of the MIT license.

Photos from the demo are under the [Unsplash license](https://unsplash.com/license).

© [Arnaud Ligny](https://arnaudligny.fr)
