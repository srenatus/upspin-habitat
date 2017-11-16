pkg_origin=srenatus
pkg_version=ad92bdb # there's no tags or releases yet
pkg_maintainer="Stephan Renatus <srenatus@chef.io>"
pkg_license=("BSD-3-Clause")
pkg_upstream_url="https://github.com/upspin/upspin"
pkg_build_deps=()
pkg_deps=()
pkg_bin_dirs=(bin)
pkg_scaffolding=core/scaffolding-go
scaffolding_go_build_deps=()

do_download() {
  # `-d`: don't let go get build it, we want to checkout a certain ref
  build_line "go get -d $gopkg"
  go get -d $gopkg

  pushd "${scaffolding_go_gopath:?}/src/$gopkg"
    build_line "checking out $pkg_version"
    git reset --hard $pkg_version
  popd
}

do_build() {
  build_line "go build -o $pkg_prefix/bin/$pkg_name $gopkg"
  go build -o "$pkg_prefix/bin/$pkg_name" "$gopkg"
}

do_install() {
  return 0
}
