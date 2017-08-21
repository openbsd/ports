#	$OpenBSD: Makefile,v 1.2 2017/08/21 05:56:13 jasper Exp $

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

MAKE_ENV+= CROSS_COMPILE="aarch64-none-elf-"
MAKE_ENV+= BUILD_STRING="${GH_TAGNAME:S/v//}"

NO_TEST=	Yes
USE_GMAKE=	Yes

do-build:
	cd ${WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
	        -f ${MAKE_FILE} PLAT=rk3399 DEBUG=1 bl31

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/arm-trusted-firmware/
	${INSTALL_DATA} ${WRKBUILD}/build/rk3399/debug/bl31/bl31.elf \
	    ${PREFIX}/share/arm-trusted-firmware/rk3399-bl31.elf

.include <bsd.port.mk>
