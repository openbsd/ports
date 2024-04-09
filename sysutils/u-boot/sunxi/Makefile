VERSION=	2024.01

SOC=		sunxi

BOARDS=\
	A10-OLinuXino-Lime \
	A10s-OLinuXino-M \
	A20-OLinuXino-Lime \
	A20-OLinuXino-Lime2 \
	A20-OLinuXino-Lime2-eMMC \
	A20-OLinuXino_MICRO \
	Bananapi \
	Bananapi_M2_Ultra \
	Bananapi_m2m \
	bananapi_m2_berry \
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

BUILD_DEPENDS+= devel/arm-none-eabi/gcc,arm
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
.endfor

.include <bsd.port.mk>
