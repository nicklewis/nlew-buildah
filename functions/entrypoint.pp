function buildah::entrypoint(Target $target, String $entrypoint) {
  run_task(buildah::config, localhost, config => 'entrypoint', value => $entrypoint, image => $target.host)
}
