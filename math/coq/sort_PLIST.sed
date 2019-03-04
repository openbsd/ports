# coq contains a library called library :)
# its obviously no libfoo.[ao]
\%/library.[ao]$% { w PFRAG.native.new
  d
}
\%/lib[^/]+\.[ao]$% { w PLIST.new
  d
}
\%[^/]+\.(cmxa?|[ao]|opt|native)$% { w PFRAG.native.new
  d
}
\%\.cmxs$% { w PFRAG.dynlink-native.new
  d
}
w PLIST.new
d
