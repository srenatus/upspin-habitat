gopkg="upspin.io/cmd/dirserver"
pkg_name=dirserver
pkg_description="upspin dirserver"
pkg_exports=(
  [port]=service.port # TODO
  [host]=service.host
)

source ${PLAN_CONTEXT}/../common-plan.sh
