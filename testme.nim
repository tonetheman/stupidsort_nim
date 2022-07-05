

import std/random


const A_SIZE = 1000
var swap_count : int = 0


proc stupidsort( a : var array[A_SIZE,int]) =
  for i  in 0..<len(a):
    for j in 0..<len(a):
      if a[i]<a[j]:
        swap_count = swap_count + 1
        var tmp = a[i]
        a[i] = a[j]
        a[j] = tmp

proc testme() =
  var
    a: array[A_SIZE, int]


  randomize()
  swap_count = 0
  for i in 0..<len(a):
    a[i] = rand(A_SIZE)


  stupidsort(a)
  # echo("Swap count",swap_count)


testme()

