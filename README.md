## [Resume template](#resume-template)

Middleman project with static Resume site.

### [System Requirements](#system-requirements)

- ruby
- npm

### [Install](#install)

```bash
docker build -t resume .
```

To build a new version for [https://harrykodden.github.io/resume/build](http://harrykodden.github.io/resume/build):

```bash
git checkout gh-pages
git merge master
bundle exec middleman build
git add .
git commit -am 'new release'
git push
```

