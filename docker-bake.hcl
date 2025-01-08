target "default" {
  context = "."
  dockerfile = "Dockerfile"
  contexts = {
      example1 = "target:subrepo-example1"
      example2 = "target:subrepo-example2"
  }
}

target "subrepo-example1" {
  context = "subrepos/example1"
  dockerfile = "Dockerfile"
}

target "subrepo-example2" {
  context = "subrepos/example2"
  dockerfile = "Dockerfile"
}