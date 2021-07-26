#	$OpenBSD: Makefile,v 1.23 2021/07/26 07:24:51 jsg Exp $

COMMENT=	Raspberry Pi firmware
GH_ACCOUNT=	raspberrypi
GH_PROJECT=	firmware
GH_TAGNAME=	1.20210527
DISTNAME=	${GH_ACCOUNT}-${GH_PROJECT}-${GH_TAGNAME}
#DISTNAME=	${GH_ACCOUNT}-${GH_PROJECT}-${V}
EXTRACT_FILES=	${GH_PROJECT}-${GH_TAGNAME}/boot

CATEGORIES=	sysutils

# Broadcom/Raspberry Pi license
# allows redistribution of binary files
# only allows them to be used in relation to Raspberry Pi
PERMIT_PACKAGE=		Yes

PKG_ARCH=		*

NO_BUILD=		Yes
NO_TEST=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/raspberrypi-firmware/
	cp -r ${WRKSRC}/boot/ ${PREFIX}/share/raspberrypi-firmware/boot/

.include <bsd.port.mk>
