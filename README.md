# Pixel-to-ansi [![NPM version][npm-image]][npm] [![Build Status][travis-image]][travis] [![Coverage Status][coveralls-image]][coveralls]

> ImageData to AnsiBackgroundColor

## Installation
```bash
$ npm install pixel pixel-to-ansi --save
```
# API

## ansi.convert(ImageData) -> ansiBgString

```js
var pixel= require('pixel');
var ansi= require('pixel-to-ansi');
pixel.parse('http://cdn.rawgit.com/59naga/fixture-images/master/still.PNG')
.then(function(ImageData){
  console.log(ansi.convert(ImageData));
});
```

becomes: 

![The Kiss (Klimt)](https://cloud.githubusercontent.com/assets/1548478/8027166/ac8660f6-0dcc-11e5-831f-8315f95f8675.png)

# Related projects
* __pixel-to-ansi__
* [pixel](https://github.com/59naga/pixel/)

License
---
[MIT][License]

[License]: http://59naga.mit-license.org/

[npm-image]:https://img.shields.io/npm/v/pixel-to-ansi.svg?style=flat-square
[npm]: https://npmjs.org/package/pixel-to-ansi
[travis-image]: http://img.shields.io/travis/59naga/pixel-to-ansi.svg?style=flat-square
[travis]: https://travis-ci.org/59naga/pixel-to-ansi
[coveralls-image]: http://img.shields.io/coveralls/59naga/pixel-to-ansi.svg?style=flat-square
[coveralls]: https://coveralls.io/r/59naga/pixel-to-ansi?branch=master