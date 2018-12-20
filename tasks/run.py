#!/usr/bin/env python3

import os, sys, subprocess
sys.path.append(os.path.join(os.path.dirname(__file__), '..', '..', 'python_task_helper', 'files'))
from task_helper import TaskHelper

class BuildahRun(TaskHelper):
    def task(self, args):
        result = subprocess.run(['buildah', 'run', args['_target']['host'], 'sh', '-c', args['command']])
        if result.returncode == 0:
            return {"success": True}
        else:
            raise TaskError('Failed to run command in container image', 'buildah/run-failure', {'stdout': result.stdout, 'stderr': result.stderr, 'exitcode': result.returncode})

if __name__ == '__main__':
    BuildahRun().run()
