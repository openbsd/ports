USE_GCC3?=No

.if ${USE_GCC3:L} == "no"
.include "${PORTSDIR}/lang/egcs/stable/files/gcc3.port.mk"
.endif
