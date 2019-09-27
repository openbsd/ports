#	$OpenBSD: Makefile,v 1.12 2019/09/27 15:43:29 kurt Exp $

PKG_ARCH=		*

COMMENT=	ARM Trusted Firmware

GH_ACCOUNT=	ARM-software
GH_PROJECT=	arm-trusted-firmware
GH_TAGNAME=	v2.1

EPOCH=		0
REVISION=	0

CATEGORIES=	sysutils

# BSD
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS+= devel/arm-none-eabi/gcc-linaro,aarch64
BUILD_DEPENDS+= devel/arm-none-eabi/gcc-linaro,arm

MAKE_ENV+= CROSS_COMPILE="aarch64-none-elf-"
MAKE_ENV+= BUILD_STRING="${GH_TAGNAME:S/v//}"

NO_TEST=	Yes
USE_GMAKE=	Yes

# Disable passing CFLAGS to allow the build to use various
# optimization levels. Allowing ports to override CFLAGS
# causes the build to fail.
CFLAGS=

PLATFORMS=\
	rk3328 \
	rk3399 \
	sun50i_a64

do-build:
.for P in ${PLATFORMS}
	cd ${WRKSRC} && \
	${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
	    V=1 PLAT=${P} DEBUG=1 bl31
.endfor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/arm-trusted-firmware/
	${INSTALL_DATA} ${WRKBUILD}/build/rk3328/debug/bl31/bl31.elf \
	    ${PREFIX}/share/arm-trusted-firmware/rk3328-bl31.elf
	${INSTALL_DATA} ${WRKBUILD}/build/rk3399/debug/bl31/bl31.elf \
	    ${PREFIX}/share/arm-trusted-firmware/rk3399-bl31.elf
	${INSTALL_DATA} ${WRKBUILD}/build/sun50i_a64/debug/bl31.bin \
	    ${PREFIX}/share/arm-trusted-firmware/sun50i_a64-bl31.bin

.include <bsd.port.mk>
