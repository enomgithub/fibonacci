import dom
from strutils import intToStr

import fibonacci


proc main() =
  const id = "fibonacci-bar"
  const height = 10
  const color = "#302833"
  for i in countup(1, 15):
    let number = fibonacci(i)
    let bar = document.createElement("div")
    bar.style.width = intToStr(number) & "px"
    bar.style.height = intToStr(height) & "px"
    bar.style.backgroundColor = color
    document.getElementById(id).appendChild(bar)


when isMainModule:
  main()
