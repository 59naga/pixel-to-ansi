# Dependencies
Ansi= (require '../src').Ansi
ansi= new Ansi process.stdout.columns,process.stdout.rows

pixel= require 'pixel'

# Environment
fixture= require 'fixture-images'

# Specs
describe 'API',->
  describe 'convert',->
    it 'gif to ansiBgColor',(done)->
      pixel.parse fixture.animated.gif
      .then (images)->
        bgcolor= ansi.convert images
        console.log bgcolor.toString()

        done()

    xit '(same image at above) png to ansiBgColor',(done)->
      pixel.parse fixture.animated.png
      .then (images)->
        bgcolor= ansi.convert images
        console.log bgcolor.toString()

        done()

  describe 'convert',->
    it 'gif to ansiBgColor',(done)->
      pixel.parse fixture.still.gif
      .then (images)->
        bgcolor= ansi.convert images
        console.log bgcolor.toString()

        done()

    it 'png to ansiBgColor',(done)->
      pixel.parse fixture.still.png
      .then (images)->
        bgcolor= ansi.convert images
        console.log bgcolor.toString()

        done()

    it 'jpg to ansiBgColor',(done)->
      pixel.parse fixture.still.jpg
      .then (images)->
        bgcolor= ansi.convert images
        console.log bgcolor.toString()

        done()

    it 'bmp to ansiBgColor',(done)->
      pixel.parse fixture.still.bmp
      .then (images)->
        bgcolor= ansi.convert images
        console.log bgcolor.toString()

        done()

    xit '(unsupported) webp to ansiBgColor',(done)->
      pixel.parse fixture.still.webp
      .then (images)->
        bgcolor= ansi.convert images
        console.log bgcolor.toString()

        done()
