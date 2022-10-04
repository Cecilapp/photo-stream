# Photo Stream

A Photo Stream static website, powered by [Cecil](https://cecil.app) (and [Unsplash](https://unsplash.com)).

Demo: https://photo-stream.cecil.app

## Install

[![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://github.com/Cecilapp/photo-stream)

## Usage

Just drop photos in `static/photos`.

For each photo you can add an alternative description, and details about the author, through the `data/photos.yaml` file:

```yaml
<file basename>:
  alt: "<alternative description>"
  author:
    name: <author name>
    url: <author URL>
```

## License

_Photo Stream_ is a free software distributed under the terms of the [MIT license](LICENSE).

Photos under the [Unsplash license](https://unsplash.com/license).

© [Arnaud Ligny](https://arnaudligny.fr)
