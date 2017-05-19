A Docker Image for Performing Modern Go Builds
==============================================

This is a base image that has the dependencies necessary for performing golang builds with Glide and Gox support. Glide provides golang dependency management. Gox provides simplified cross-platform building. A full complement of Linters is also pre-installed.

Included:
* [Golang 1.8.1](https://golang.org/)
* [Glide 0.12.3](https://github.com/Masterminds/glide)
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
