VERSION=	2021.10
REVISION=	8

SOC=		arm

OMAP=\
	omap4_panda \
	am335x_evm
SUNXI=\
	A10-OLinuXino-Lime \
	A10s-OLinuXino-M \
	A20-OLinuXino-Lime \
	A20-OLinuXino-Lime2 \
	A20-OLinuXino-Lime2-eMMC \
	A20-OLinuXino_MICRO \
	Bananapi \
	Bananapi_M2_Ultra \
	Bananapi_m2m \
	bananapi_m2_plus_h3 \
	bananapi_m2_zero \
	Bananapro \
	CHIP \
	Cubieboard \
	Cubieboard2 \
	Cubieboard4 \
	Cubietruck \
	Lamobo_R1 \
	Linksprite_pcDuino \
	Linksprite_pcDuino3 \
	Linksprite_pcDuino3_Nano \
	nanopi_neo \
	Orangepi \
	Orangepi_mini \
	orangepi_2 \
	orangepi_lite \
	orangepi_one \
	orangepi_pc \
	orangepi_pc_plus \
	orangepi_plus \
	orangepi_plus2e \
	orangepi_zero
IMX=\
	cm_fx6 \
	mx6cuboxi \
	mx6qsabrelite \
	nitrogen6q \
	novena \
	udoo \
	usbarmory \
	wandboard
BOARDS=\
	${OMAP} \
	${SUNXI} \
	${IMX} \
	clearfog \
	qemu_arm \
	rpi_2 \
	rpi_3_32b \
	tinker-rk3288 \
	turris_omnia

BUILD_DEPENDS+=	devel/arm-none-eabi/gcc,arm
CROSS_COMPILE=	arm-none-eabi-

do-build:
.for BOARD in ${BOARDS}
	cd ${WRKSRC} && \
	    mkdir -p build/${BOARD} && \
	    ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
	        O="build/${BOARD}" \
	        -f ${MAKE_FILE} "${BOARD}"_defconfig
	cd ${WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
	        O="build/${BOARD}" \
	        -f ${MAKE_FILE} ${ALL_TARGET}
.if "${BOARD:M*-rk3288}"
	cd ${WRKSRC}/build/${BOARD} && \
	    tools/mkimage -n rk3288 -T rksd -d tpl/u-boot-tpl.bin \
	        idbloader.img && \
	    cat spl/u-boot-spl-dtb.bin >> idbloader.img
.endif
.endfor

.include <bsd.port.mk>
