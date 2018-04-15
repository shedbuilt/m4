#!/bin/bash
case "$SHED_BUILD_MODE" in
    toolchain)
        SHED_PKG_PREFIX='/tools'
        ;;
    *)
        SHED_PKG_PREFIX='/usr'
        ;;
esac
./configure --prefix=$SHED_PKG_PREFIX &&
make -j $SHED_NUM_JOBS &&
make DESTDIR="$SHED_FAKE_ROOT" install
