#	$OpenBSD: Makefile,v 1.1.1.1 2017/08/20 21:32:07 kettenis Exp $

COMMENT=	ARM Trusted Firmware
GH_ACCOUNT=	ARM-software
GH_PROJECT=	arm-trusted-firmware
GH_TAGNAME=	v1.4
VERSION=	1.4

PKGNAME=	arm-trusted-firmware-${VERSION}
CATEGORIES=	sysutils

# BSD
PERMIT_PACKAGE_CDROM=	Yes

PKG_ARCH=		*

BUILD_DEPENDS+= devel/arm-none-eabi/gcc-linaro,aarch64
MAKE_ENV+= CROSS_COMPILE="aarch64-none-elf-"
MAKE_ENV+= BUILD_STRING="${VERSION}"

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
