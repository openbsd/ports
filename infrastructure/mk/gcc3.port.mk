USE_GCC3 ?= No

.if ${USE_GCC3:L} == "no"
.include "${PORTSDIR}/lang/gcc/3.3/gcc3.port.mk"
.endif
