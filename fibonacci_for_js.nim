## fibonacci_for_js.nim

import dom
from strutils import intToStr

import fibonacci


proc main() =
  const
    id = "fibonacci-bar"
    height = 10
    color = "#302833"
  for i in countup(1, 15):
    let
      number = fibonacci(i)
      bar = document.createElement("div")
    bar.style.width = number.intToStr & "px"
    bar.style.height = height.intToStr & "px"
    bar.style.backgroundColor = color
    document.getElementById(id).appendChild(bar)


when isMainModule:
  main()
