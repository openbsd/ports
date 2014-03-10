.if ${MACHINE_ARCH} == "hppa" || ${MACHINE_ARCH} == "alpha"                                                                                                   
MODGCC4_VERSION?=4.6                                                                                                                                          
.else                                                                                                                                                         
MODGCC4_VERSION?=4.8
.endif
.include "${PORTSDIR}/lang/gcc/${MODGCC4_VERSION}/gcc4.port.mk"
