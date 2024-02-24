VERSION=	2024.01

SOC=		sun50i

BOARDS=\
	a64-olinuxino \
	bananapi_m64 \
	nanopi_a64 \
	nanopi_neo2 \
	orangepi_pc2 \
	orangepi_prime \
	orangepi_win \
	orangepi_zero_plus \
	orangepi_zero2 \
	orangepi_zero3 \
	pine64-lts \
	pine64_plus \
	pine_h64 \
	pine_h64-model-b \
	pinebook \
	sopine_baseboard \
	x96_mate

BUILD_DEPENDS+= devel/arm-none-eabi/gcc,aarch64 \
		devel/py-elftools${MODPY_FLAVOR} \
		sysutils/arm-trusted-firmware>=2.10.2v0 \
		sysutils/crust>=0.6
CROSS_COMPILE=	aarch64-none-elf-

SUNXI_BL31=	${LOCALBASE}/share/arm-trusted-firmware/sun50i_a64-bl31.bin
SUNXI_H6_BL31=	${LOCALBASE}/share/arm-trusted-firmware/sun50i_h6-bl31.bin
SUNXI_H616_BL31=${LOCALBASE}/share/arm-trusted-firmware/sun50i_h616-bl31.bin

do-build:
.for BOARD in ${BOARDS}
	cd ${WRKSRC} && \
	    mkdir -p build/${BOARD} && \
	    ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
	        O="build/${BOARD}" \
	        -f ${MAKE_FILE} "${BOARD}"_defconfig 
.if "${BOARD:Morangepi_zero?}" || "${BOARD:Mx96_mate}"
	cd ${WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} BL31=${SUNXI_H616_BL31} SCP=$$SCP \
		${MAKE_PROGRAM} ${MAKE_FLAGS} O="build/${BOARD}" \
	        -f ${MAKE_FILE} ${ALL_TARGET}
.elif "${BOARD:M*_h64*}"
	if [[ -f ${LOCALBASE}/share/crust/${BOARD}/scp.bin ]]; then \
		SCP=${LOCALBASE}/share/crust/${BOARD}/scp.bin ; \
	else \
		SCP=/dev/null ; \
	fi ; \
	cd ${WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} BL31=${SUNXI_H6_BL31} SCP=$$SCP \
		${MAKE_PROGRAM} ${MAKE_FLAGS} O="build/${BOARD}" \
	        -f ${MAKE_FILE} ${ALL_TARGET}
.else
	if [[ -f ${LOCALBASE}/share/crust/${BOARD}/scp.bin ]]; then \
		SCP=${LOCALBASE}/share/crust/${BOARD}/scp.bin ; \
	else \
		SCP=/dev/null ; \
	fi ; \
	cd ${WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} BL31=${SUNXI_BL31} SCP=$$SCP \
		${MAKE_PROGRAM} ${MAKE_FLAGS} O="build/${BOARD}" \
	        -f ${MAKE_FILE} ${ALL_TARGET}
.endif
.endfor

.include <bsd.port.mk>
