USE_GCC4?=No

.if ${USE_GCC4:L} == "no"
.include "${PORTSDIR}/lang/gcc/4.2/gcc4.port.mk"
.endif
