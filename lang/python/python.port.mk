MODPY_DEFAULT_VERSION_2 = 2.7
MODPY_DEFAULT_VERSION_3 = 3.13
MODPY_VERSION ?= ${MODPY_DEFAULT_VERSION_3}

.if ${MODPY_VERSION} == ${MODPY_DEFAULT_VERSION_3}
# bump this to avoid bumping all the ports for PLIST changes
_MODPY_SYSTEM_VERSION = 1
.  include "${PORTSDIR}/lang/python/3/python.port.mk"
.elif ${MODPY_VERSION} == ${MODPY_DEFAULT_VERSION_2}
_MODPY_SYSTEM_VERSION = 0
.  include "${PORTSDIR}/lang/python/2.7/python.port.mk"
.else
ERRORS += "Fatal: MODPY_VERSION ${MODPY_VERSION} is not supported"
.endif
