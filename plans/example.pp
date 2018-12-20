plan buildah::example(
  String $tag,
) {
  $image = buildah::from('alpine')
  $target = Target.new("buildah://${image}")

  run_command('echo "hello world" > /message.txt', $target)

  run_plan(buildah::other_plan, target => $target, message => 'goodbye world')

  buildah::entrypoint($target, 'cat /message.txt')
  buildah::commit($target, $tag)
}
