# No dependencies

# Public
class Coordinate
  constructor: (imageData)->
    {width,height,data}= imageData
    if width * height * 4 isnt data.length
      throw new Error """
      Invalid imageData.data.length:
        #{width} x #{height} != #{data.length/4}
      """

    @points= {}
    @colors= []
    @size= 0

    x= 0
    y= 0
    i= 0
    while data[i]?
      r= ~~data[i++]
      g= ~~data[i++]
      b= ~~data[i++]
      a= ~~data[i++]

      color= "rgba(#{r},#{g},#{b},#{a})"
      @colors.push color unless color in @colors
      @points["#{x},#{y}"]= @colors.indexOf color

      @size++
      x++
      if @size % width is 0
        x= 0
        y++

    if width*height isnt @size
      throw new Error """
      Broken bitmap:
        #{width} x #{height} != #{@size}(#{data.length/4})
      """

module.exports.Coordinate= Coordinate