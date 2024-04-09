VERSION=	2021.10
REVISION=	9

SOC=		arm

OMAP=\
	omap4_panda \
	am335x_evm
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
