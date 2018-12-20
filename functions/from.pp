function buildah::from(String $base) {
  run_task(buildah::from, localhost, base => $base).first['id']
}
