#!/bin/sh

# See gearboxworks/gearbox-base for details.
test -f /build/include-me.sh && . /build/include-me.sh

c_ok "Started."
c_ok "Building for version ${GEARBOX_CONTAINER_VERSION}."

c_ok "Finished."
