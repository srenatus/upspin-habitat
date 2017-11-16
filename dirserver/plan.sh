pkg_origin=srenatus
pkg_version=ad92bdb
pkg_name=dirserver
gopkg="upspin.io/cmd/dirserver"
pkg_description="upspin dirserver"
pkg_exports=(
  [port]=service.port # TODO
  [host]=service.host
)

source ${PLAN_CONTEXT}/../common-plan.sh
