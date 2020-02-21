# Base dependabot automation configuration

This is a holding repository for Panorama's dependabot automation configuration.
When repos need to add automation for dependabot, they can use the files in this
repo, largely without modification.

## Adding automation to a project

Let's see we have a repo, `my-new-project` and we want to automate dependency
checking and merging. This can be accomplished in the following way.

1. Create `.github/workflows`

``` shell
$ cd my-new-project
$ mkdir -p .github/workflows
$ curl -o .github/workflows/dependabot-triage.yml https://raw.githubusercontent.com/panorama-ed/base-dependabot-automation/master/_github/workflows/dependabot-triage.yml
$ curl -o .github/workflows/auto-qa.yml https://raw.githubusercontent.com/panorama-ed/base-dependabot-automation/master/_github/workflows/auto-qa.yml
```

2. Create `.dependabot/config.yml`

``` shell
$ cd my-new-project
$ mkdir .dependabot
$ curl -o .dependabot/config.yml https://github.com/panorama-ed/base-dependabot-automation/blob/master/_dependabot/config.yml
```

3. Tweak `.dependabot/config.yml` for your project. Instructions and
   documentation are included in the file.

4. Commit files to repository.
