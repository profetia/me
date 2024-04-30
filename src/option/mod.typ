
#let conf = state("lib.option.conf", (:))

#let init(c) = {
  conf.update(c)
}

#let optional(pred, c) = context {
  if pred(conf.get()) {
    c
  } else {
    []
  }
}

#let en(c) = optional(conf => { conf.lang == "en" }, c)
#let zh(c) = optional(conf => { conf.lang == "zh" }, c)

#let cv(c) = optional(conf => { conf.topic == "cv" }, c)
#let resume(c) = optional(conf => { conf.topic == "resume" }, c)
