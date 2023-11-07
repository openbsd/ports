VERSION=	2021.10
REVISION=	8

SOC=		aarch64

SUNXI64=\
	a64-olinuxino \
	bananapi_m64 \
	nanopi_a64 \
	nanopi_neo2 \
	orangepi_pc2 \
	orangepi_prime \
	orangepi_win \
	orangepi_zero_plus \
	pine64-lts \
	pine64_plus \
	pine_h64-model-b \
	pinebook \
	sopine_baseboard

BOARDS=\
	firefly-rk3399 \
	mvebu_espressobin-88f3720 \
	mvebu_mcbin-88f8040 \
	nanopc-t4-rk3399 \
	nanopi-neo4-rk3399 \
	nanopi-r2s-rk3328 \
	nanopi-r4s-rk3399 \
	pinebook-pro-rk3399 \
	qemu_arm64 \
	rock64-rk3328 \
	rock960-rk3399 \
	rock-pi-4-rk3399 \
	rock-pi-n10-rk3399pro \
	rockpro64-rk3399 \
	rpi_arm64

BUILD_DEPENDS+= devel/arm-none-eabi/gcc,aarch64 \
		devel/py-elftools${MODPY_FLAVOR} \
		sysutils/arm-trusted-firmware>=2.2p0v0
CROSS_COMPILE=	aarch64-none-elf-
RK3328_BL31=	${LOCALBASE}/share/arm-trusted-firmware/rk3328-bl31.elf
RK3399_BL31=	${LOCALBASE}/share/arm-trusted-firmware/rk3399-bl31.elf
SUNXI_BL31=	${LOCALBASE}/share/arm-trusted-firmware/sun50i_a64-bl31.bin
SUNXI_H6_BL31=	${LOCALBASE}/share/arm-trusted-firmware/sun50i_h6-bl31.bin

MODPY_ADJ_FILES= arch/arm/mach-rockchip/make_fit_atf.py

do-build:
.for BOARD in ${BOARDS}
	cd ${WRKSRC} && \
	    mkdir -p build/${BOARD} && \
	    ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
	        O="build/${BOARD}" \
	        -f ${MAKE_FILE} "${BOARD}"_defconfig
.if "${BOARD:M*-rk3399*}"
	cd ${WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} BL31=${RK3399_BL31} ${MAKE_PROGRAM} \
	        ${MAKE_FLAGS} O="build/${BOARD}" \
	        -f ${MAKE_FILE} ${ALL_TARGET}
.elif "${BOARD:M*-rk3328}"
	cd ${WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} BL31=${RK3328_BL31} ${MAKE_PROGRAM} \
	        ${MAKE_FLAGS} O="build/${BOARD}" \
	        -f ${MAKE_FILE} ${ALL_TARGET}
.else
	cd ${WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
	        O="build/${BOARD}" \
	        -f ${MAKE_FILE} ${ALL_TARGET}
.endif
.endfor
.for BOARD in ${SUNXI64}
.if "${BOARD:M*_h64*}"
	cd ${WRKSRC} && \
	    mkdir -p build/${BOARD} && \
	    ${SETENV} ${MAKE_ENV} BL31=${SUNXI_H6_BL31} ${MAKE_PROGRAM} \
	        ${MAKE_FLAGS} O="build/${BOARD}" \
	        -f ${MAKE_FILE} "${BOARD}"_defconfig && \
	    ${SETENV} ${MAKE_ENV} BL31=${SUNXI_H6_BL31} ${MAKE_PROGRAM} \
	        ${MAKE_FLAGS} O="build/${BOARD}" \
	        -f ${MAKE_FILE} ${ALL_TARGET}
.else
	cd ${WRKSRC} && \
	    mkdir -p build/${BOARD} && \
	    ${SETENV} ${MAKE_ENV} BL31=${SUNXI_BL31} ${MAKE_PROGRAM} \
	        ${MAKE_FLAGS} O="build/${BOARD}" \
	        -f ${MAKE_FILE} "${BOARD}"_defconfig && \
	    ${SETENV} ${MAKE_ENV} BL31=${SUNXI_BL31} ${MAKE_PROGRAM} \
	        ${MAKE_FLAGS} O="build/${BOARD}" \
	        -f ${MAKE_FILE} ${ALL_TARGET}
.endif
	if [[ -f ${WRKSRC}/build/${BOARD}/spl/sunxi-spl.bin && \
	      -f ${WRKSRC}/build/${BOARD}/u-boot.itb ]]; then \
		cd ${WRKSRC}/build/${BOARD} && \
		    cat spl/sunxi-spl.bin u-boot.itb > u-boot-sunxi-with-spl.bin ; \
	fi
.endfor

.include <bsd.port.mk>
