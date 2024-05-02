
#let __conf = state("lib.option.__conf", (:))

#let __declare(pred, content) = context {
  if pred(__conf.get()) {
    content
  } else {
    []
  }
}

#let option(key, value) = {
  __conf.update((dict) => {
    if dict.at(key, default: none) == none {
      dict.insert(key, value)
    } else {
      dict.at(key) = value
    }

    dict
  })
}

#let configure(dict) = {
  for (key, value) in dict {
    option(key, value)
  }
}

#let declare(key, value) = {
  (content) => __declare(__conf => __conf.at(key) == value, content)
}
