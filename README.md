# A Docker Image for Performing Modern Go Builds

This is a base image that has the dependencies necessary for performing golang builds with Dep, Glide, and Gox support. Dep is the official golang dependency management tool. Glide in place to provide golang dependency management for legacy projects. Gox provides simplified cross-platform building. A full complement of Linters is also pre-installed.

# Supported tags:
- 1.9.5, 1.9, 1, latest
- 1.9.4, 1.9.3, 1.9.2, 1.9.1, 1.9.0
- 1.8.3, 1.8
- 1.8.0, 1.8.1, 1.8.2
- 1.7.6, 1.7
- 1.7.5

Included:
* [Golang](https://golang.org/)
* [Dep](https://github.com/golang/dep)
* [Glide 0.13.1](https://github.com/Masterminds/glide)
* [Gox](https://github.com/mitchellh/gox)

Glide Plugins:
* [Glide Report](https://github.com/Masterminds/glide-report)
* [Glide-VC](https://github.com/sgotti/glide-vc)
* [Glide Cleanup](https://github.com/ngdinhtoan/glide-cleanup)

Linters:
* [golint](https://github.com/golang/lint/golint)
* [gosimple](https://honnef.co/go/simple/cmd/gosimple)
* [unconvert](https://github.com/mdempsky/unconvert)
* [structcheck](https://github.com/opennota/check/cmd/structcheck)
* [varcheck](https://github.com/opennota/check/cmd/varcheck)
* [gas](https://github.com/HewlettPackard/gas)
