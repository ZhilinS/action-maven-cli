# GitHub Action for the Maven CLI

Extends [project](https://github.com/xlui/action-maven-cli) that created a Maven action with JDK8/11/13 which is executed from the root of a project. This action adds availability to run maven CLI from particular directory, just set the environment variable called `APP_DIR` (by default it's `.`). Useful for mono-repo projects.

The [origin project](https://github.com/LucaFeger/action-maven-cli) creates a Maven action with only JDK 8. But I'm writing java with JDK 11 and in the short future I'll keep using JDK 11. So I have forked the origin repository and add support for JDK 11.

The GitHub Action for [Maven](https://maven.apache.org/) wraps the Maven CLI to enable Maven commands to be run. This can be used to run every Maven Command.

## Usage

```yml
# This is a basic workflow to help you get started with Actions

name: CI

# Controls when the action will run. Triggers the workflow on push or pull request 
# events but only for the master branch
on:
  push:
    branches: [ master ]
  pull_request:
    branches: [ master ]

# A workflow run is made up of one or more jobs that can run sequentially or in parallel
jobs:
  # This workflow contains a single job called "build"
  build:
    # The type of runner that the job will run on
    runs-on: ubuntu-latest

    # Steps represent a sequence of tasks that will be executed as part of the job
    steps:
    # Checks-out your repository under $GITHUB_WORKSPACE, so your job can access it
    - uses: actions/checkout@v2

    # Runs a single command using the runners shell
    - name: Run a one-line script
      run: echo Hello, world!

    # Runs a set of commands using the runners shell
    - name: Run maven script
      uses: ZhilinS/action-maven-cli/jdk11@master
      id: test
      env:
        APP_DIR: application
      with:
        lifecycle: 'clean package test'
```

Under the last `jobs.build.steps.name` you can set the value of `uses` to this action.

```yml
uses: ZhilinS/action-maven-cli/jdk11@master
```

or

```yml
uses: ZhilinS/action-maven-cli/jdk8@master
```

As JDK 11 is the latest LTS JDK, there is a convenient way to use it:

```yml
uses: ZhilinS/action-maven-cli@master
```

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE.md).
