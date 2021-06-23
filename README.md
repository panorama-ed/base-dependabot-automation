# Base dependabot automation configuration

This is a holding repository for Panorama's dependabot automation configuration.
When repos need to add automation for dependabot, they can use the files in this
repo, largely without modification.

## Adding automation to a project

Let's say we have a repo, `my-new-project` and we want to set up Dependabot in
it. This can be accomplished in one of the following two ways:

### Option A: Using install.sh

```shell
cd my-new-project
curl -s https://raw.githubusercontent.com/panorama-ed/base-dependabot-automation/main/install.sh | bash -
```

### Option B: Manually copying files

1. Create `.github/workflows`

```shell
cd my-new-project
mkdir -p .github/workflows
curl -o .github/workflows/dependabot-prs.yml https://raw.githubusercontent.com/panorama-ed/base-dependabot-automation/main/_github/workflows/dependabot-prs.yml
```

2. Create `.github/dependabot.yml`

```shell
cd my-new-project
curl -o .github/dependabot.yml https://raw.githubusercontent.com/panorama-ed/base-dependabot-automation/main/_github/dependabot.yml
```

3. Tweak `dependabot.yml` for your project
    - Instructions and documentation are
in [Panopedia](https://panoramaed.atlassian.net/wiki/spaces/ENG/pages/2162262038/Setting+up+a+new+GitHub+repository#Configure-Dependabot)
and [GitHub](https://docs.github.com/en/code-security/supply-chain-security/keeping-your-dependencies-updated-automatically/configuration-options-for-dependency-updates)

4. Commit files to repository
