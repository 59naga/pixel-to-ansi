# Dependencies
Coordinate= (require './coordinate').Coordinate

ansi256colors= require 'ansi-256-colors'

# Public
class Ansi
  constructor: (@limitWidth=512,@limitHeight=512)->

  convert: (images)->
    imageData= if images instanceof Array then images[0] else images
    coordinate= new Coordinate imageData
    {width,height}= imageData

    ansi= '\n'

    count= 1
    overflow= 0
    for point,i of coordinate.points
      [r,g,b,a]= coordinate.colors[i].slice(5,-1).split ','

      x= count%width
      y= count/width

      ansi+=
        if x<@limitWidth and y<=@limitHeight
          # 255 -> 0~5
          r= Math.round r/51
          g= Math.round g/51
          b= Math.round b/51

          color= ansi256colors.bg.getRgb r,g,b
          color+= ' '
        else
          ''
      ansi+= ansi256colors.reset+'\n' if x is 0 and y<@limitHeight

      count++

    result= new String ansi+ansi256colors.reset
    result.count= count-1
    result.overflow= overflow
    result

module.exports= new Ansi
module.exports.Ansi= Ansi