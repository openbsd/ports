.if ${MACHINE_ARCH} == "aarch64"
MODGCC4_VERSION?=8
.else
MODGCC4_VERSION?=4.9
.endif
.include "${PORTSDIR}/lang/gcc/${MODGCC4_VERSION}/gcc4.port.mk"
