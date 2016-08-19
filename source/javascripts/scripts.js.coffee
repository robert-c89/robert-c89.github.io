#= require vendor/modernizr
#= require lightbox2/dist/js/lightbox-plus-jquery.js

document.onreadystatechange = ->
  if document.readyState == 'interactive'

    unless Modernizr?.svg
      endsWithDotSvg = /.*\.svg$/
      # 1. Find all svg images used on the page
      # 2. Save the current src path
      # 3. Replace svg file extension with png
      imgs = document.getElementsByTagName('img')
      for img in imgs
        if img.src.match(endsWithDotSvg)
          img.src = img.src.replace(/.svg$/, '.png')

lightbox.option(
  'alwaysshowNavOnTouchDevices': true,
  'disableScrolling': true,
  'showImageNumberLabel': false
)
