plan buildah::other_plan(Target $target, String $message) {
  run_task(buildah::test_task, $target, message => $message)
}
