target "default" {
  context = "."
  dockerfile = "Dockerfile"
  contexts = {
      example1 = "target:subrepo-example1"
  }
}

target "subrepo-example1" {
  context = "subrepos/example1"
  dockerfile = "Dockerfile"
}
