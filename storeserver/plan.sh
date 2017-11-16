gopkg="upspin.io/cmd/storeserver"
pkg_name=storeserver
pkg_description="upspin storeserver"
pkg_exports=(
  [port]=service.port # TODO
  [host]=service.host
)

source ${PLAN_CONTEXT}/../common-plan.sh
