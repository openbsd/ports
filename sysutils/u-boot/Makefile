#	$OpenBSD: Makefile,v 1.22 2017/08/01 23:25:44 jsg Exp $

BROKEN-sparc64=	Error: the specified option is not accepted in ISB at operand 1 -- isb sy

FLAVORS=	aarch64 arm
FLAVOR?=	arm

COMMENT=	U-Boot firmware
VERSION=	2017.07
REVISION=	0
DISTNAME=	u-boot-${VERSION}
PKGNAME=	u-boot-${FLAVOR}-${VERSION:S/-//}
FULLPKGNAME=	${PKGNAME}
CATEGORIES=	sysutils
HOMEPAGE=	http://www.denx.de/wiki/U-Boot
MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	ftp://ftp.denx.de/pub/u-boot/
EXTRACT_SUFX=	.tar.bz2
PKG_ARCH=	*

BUILD_DEPENDS=	devel/dtc \
		devel/swig \
		textproc/gsed

MODULES=	lang/python
MODPY_RUNDEP=	No
MODPY_ADJ_FILES=	tools/binman/binman.py \
			lib/libfdt/pylibfdt/setup.py \
			tools/dtoc/dtoc.py

MAKE_ENV=	KBUILD_VERBOSE=1 \
		PYTHON="${MODPY_BIN}"

.if "${FLAVOR}" == "aarch64"
BUILD_DEPENDS+=	devel/arm-none-eabi/gcc-linaro,aarch64
MAKE_ENV+=	CROSS_COMPILE="aarch64-none-elf-"
.elif "${FLAVOR}" == "arm"
BUILD_DEPENDS+=	devel/arm-none-eabi/gcc-linaro
MAKE_ENV+=	CROSS_COMPILE="arm-none-eabi-"
.endif

USE_GMAKE=	Yes
NO_TEST=	Yes

.if "${FLAVOR}" == "aarch64"
BOARDS=\
	bananapi_m64 \
	nanopi_neo2 \
	orangepi_pc2 \
	orangepi_prime \
	orangepi_win \
	pine64_plus \
	rpi_3
.elif "${FLAVOR}" == "arm"
OMAP=\
	omap3_beagle \
	omap4_panda \
	am335x_boneblack \
	am57xx_evm
SUNXI=\
	A10-OLinuXino-Lime \
	A10s-OLinuXino-M \
	A20-OLinuXino-Lime \
	A20-OLinuXino-Lime2 \
	A20-OLinuXino_MICRO \
	Bananapi \
	Bananapro \
	CHIP \
	CHIP_pro \
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
	orangepi_zero \
	Sinovoip_BPI_M2_Plus
IMX=\
	cm_fx6 \
	mx6cuboxi \
	mx6qsabrelite \
	nitrogen6q \
	novena \
	riotboard \
	udoo \
	usbarmory \
	wandboard
BOARDS=\
	${OMAP} \
	${SUNXI} \
	${IMX} \
	rpi_2 \
	rpi_3_32b \
	tinker-rk3288 \
	vexpress_ca15_tc2 \
	vexpress_ca9x4
.endif

FILES=\
	MLO \
	SPL \
	u-boot \
	u-boot.img \
	u-boot.bin \
	u-boot-sunxi-with-spl.bin \
	u-boot.imx \
	u-boot-spl.kwb \
	u-boot-with-spl.bin

pre-build:
	${SUBST_CMD} ${WRKBUILD}/tools/Makefile
.for f in ${MODPY_ADJ_FILES}
	${MODPY_BIN_ADJ} ${WRKSRC}/${f}
.endfor

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
.if "${BOARD}" == "tinker-rk3288"
	cd ${WRKSRC}/build/${BOARD} && \
	    tools/mkimage -n rk3288 -T rksd -d spl/u-boot-spl-dtb.bin \
	    u-boot-with-spl.bin && \
	    cat u-boot-dtb.bin >> u-boot-with-spl.bin
.endif
.endfor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/u-boot
.for BOARD in ${BOARDS}
	${INSTALL_DATA_DIR} ${PREFIX}/share/u-boot/${BOARD}
	-cd ${WRKSRC}/build/${BOARD} && \
	    cp ${FILES} ${PREFIX}/share/u-boot/${BOARD}/
.endfor

.include <bsd.port.mk>
