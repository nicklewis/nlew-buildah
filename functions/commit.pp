function buildah::commit(Target $target, String $tag) {
  run_command("buildah commit '${target.host}' '${tag}'", localhost)
}
