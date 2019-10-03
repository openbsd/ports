#	$OpenBSD: Makefile,v 1.17 2019/10/03 10:29:00 jsg Exp $

COMMENT=	Raspberry Pi firmware
GH_ACCOUNT=	raspberrypi
GH_PROJECT=	firmware
GH_TAGNAME=	1.20190925
DISTNAME=	${GH_ACCOUNT}-${GH_PROJECT}-${GH_TAGNAME}
#DISTNAME=	${GH_ACCOUNT}-${GH_PROJECT}-${V}

CATEGORIES=	sysutils

# Broadcom/Raspberry Pi license
# allows redistrubtion of binary files
# only allows them to be used in relation to Raspberry Pi
PERMIT_PACKAGE=		Yes

PKG_ARCH=		*

NO_BUILD=		Yes
NO_TEST=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/raspberrypi-firmware/
	cp -r ${WRKSRC}/boot/ ${PREFIX}/share/raspberrypi-firmware/boot/

.include <bsd.port.mk>
