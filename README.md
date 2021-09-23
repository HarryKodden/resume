## [Resume template](#resume-template)

Building static Resume site.

### [System Requirements](#system-requirements)

- docker

### [Install](#install)

```bash
docker build -t resume .
```

### [Update your resume](#update)

Make your adjustments in ***source/resume.yml***.
build local static file:
```
./resume.sh
```

open in browser:
```
[browser] build/index.html
```
### [Publish updated resume](#publish)

To build a new version for [https://harrykodden.github.io/resume/build](http://harrykodden.github.io/resume/build):


```bash
git checkout gh-pages
git merge master
git add .
git commit -am 'new release'
git push
```
