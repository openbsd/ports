.if ${MACHINE_ARCH} == "alpha"
MODGCC4_VERSION?=4.6
.else
MODGCC4_VERSION?=4.9
.endif
.include "${PORTSDIR}/lang/gcc/${MODGCC4_VERSION}/gcc4.port.mk"
