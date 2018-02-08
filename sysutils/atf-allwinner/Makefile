#	$OpenBSD: Makefile,v 1.3 2018/02/08 03:35:28 phessler Exp $

COMMENT=	ARM Trusted Firmware for Allwinner A64/H5
GH_ACCOUNT=	apritzel
GH_PROJECT=	arm-trusted-firmware
GH_COMMIT=	ae78724247a01560164d607ed66db111c74d8df0
VERSION=	20171224

DISTNAME=	${GH_PROJECT}-allwinner-${VERSION}
PKGNAME=	atf-allwinner-${VERSION}
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
	        -f ${MAKE_FILE} PLAT=sun50iw1p1 DEBUG=1 bl31

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/atf-allwinner/
	${INSTALL_DATA} ${WRKBUILD}/build/sun50iw1p1/debug/bl31.bin \
	    ${PREFIX}/share/atf-allwinner/

.include <bsd.port.mk>
