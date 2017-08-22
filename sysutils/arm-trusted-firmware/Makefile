#	$OpenBSD: Makefile,v 1.4 2017/08/22 15:42:19 naddy Exp $

PKG_ARCH=		*

COMMENT=	ARM Trusted Firmware

GH_ACCOUNT=	ARM-software
GH_PROJECT=	arm-trusted-firmware
GH_TAGNAME=	v1.4
REVISION=	0

CATEGORIES=	sysutils

# BSD
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS+= devel/arm-none-eabi/gcc-linaro,aarch64
BUILD_DEPENDS+= devel/arm-none-eabi/gcc-linaro,arm

MAKE_ENV+= CROSS_COMPILE="aarch64-none-elf-"
MAKE_ENV+= BUILD_STRING="${GH_TAGNAME:S/v//}"

MAKE_FLAGS+= V=1
MAKE_FLAGS+= PLAT=rk3399 DEBUG=1

ALL_TARGET=	bl31

NO_TEST=	Yes
USE_GMAKE=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/arm-trusted-firmware/
	${INSTALL_DATA} ${WRKBUILD}/build/rk3399/debug/bl31/bl31.elf \
	    ${PREFIX}/share/arm-trusted-firmware/rk3399-bl31.elf

.include <bsd.port.mk>
