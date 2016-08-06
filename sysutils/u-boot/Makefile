#	$OpenBSD: Makefile,v 1.5 2016/08/06 06:40:05 landry Exp $

BROKEN-powerpc=	Error: FDT_ERR_BADMAGIC

COMMENT=	U-Boot firmware
DISTNAME=	u-boot-2016.07
REVISION=	0
CATEGORIES=	sysutils
HOMEPAGE=	http://www.denx.de/wiki/U-Boot
MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	ftp://ftp.denx.de/pub/u-boot/
EXTRACT_SUFX=	.tar.bz2
PKG_ARCH=	*

BUILD_DEPENDS=	devel/arm-none-eabi/gcc-linaro \
		devel/dtc
MAKE_ENV+=	CROSS_COMPILE="arm-none-eabi-" KBUILD_VERBOSE=1
USE_GMAKE=	Yes
NO_TEST=	Yes

BOARDS=\
	omap3_beagle \
	omap4_panda \
	am335x_boneblack \
	am57xx_evm \
	A10-OLinuXino-Lime \
	A10s-OLinuXino-M \
	A20-OLinuXino-Lime \
	A20-OLinuXino-Lime2 \
	A20-OLinuXino_MICRO \
	Bananapi \
	Bananapro \
	CHIP \
	Cubieboard \
	Cubieboard2 \
	Cubietruck \
	Lamobo_R1 \
	Linksprite_pcDuino \
	Linksprite_pcDuino3 \
	Linksprite_pcDuino3_Nano \
	cm_fx6 \
	mx6cuboxi \
	mx6qsabrelite \
	nitrogen6q \
	novena \
	riotboard \
	udoo \
	wandboard \
	clearfog \
	rpi_2 \
	rpi_3_32b \
	vexpress_ca15_tc2 \
	vexpress_ca9x4

FILES=\
	MLO \
	SPL \
	u-boot \
	u-boot.img \
	u-boot.bin \
	u-boot-sunxi-with-spl.bin \
	u-boot.imx \
	u-boot-spl.kwb

do-build:
.for BOARD in ${BOARDS}
	cd ${WRKSRC} && \
	    mkdir -p build/${BOARD} && \
	    ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
	        O="build/${BOARD}" \
	        -f ${MAKE_FILE} "${BOARD}"_defconfig && \
	    ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
	        O="build/${BOARD}" \
	        -f ${MAKE_FILE} ${ALL_TARGET}
.endfor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/u-boot
.for BOARD in ${BOARDS}
	${INSTALL_DATA_DIR} ${PREFIX}/share/u-boot/${BOARD}
	-cd ${WRKSRC}/build/${BOARD} && \
	    cp ${FILES} ${PREFIX}/share/u-boot/${BOARD}/
.endfor

.include <bsd.port.mk>
