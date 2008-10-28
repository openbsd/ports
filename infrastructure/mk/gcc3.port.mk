USE_GCC3 ?= Yes

.if ${USE_GCC3:L} == "yes"
.include "${PORTSDIR}/lang/gcc/3.3/gcc3.port.mk"
.endif
