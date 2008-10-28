USE_GCC4 ?= Yes

.if ${USE_GCC4:L} == "yes"
.include "${PORTSDIR}/lang/gcc/4.2/gcc4.port.mk"
.endif
