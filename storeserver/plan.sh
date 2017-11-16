pkg_origin=srenatus
pkg_version=ad92bdb
pkg_name=storeserver
gopkg="upspin.io/cmd/storeserver"
pkg_description="upspin storeserver"
pkg_exports=(
  [port]=service.port # TODO
  [host]=service.host
)

source ${PLAN_CONTEXT}/../common-plan.sh
