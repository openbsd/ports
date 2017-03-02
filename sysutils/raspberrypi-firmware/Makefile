#	$OpenBSD: Makefile,v 1.2 2017/03/02 12:04:54 sthen Exp $

COMMENT=	Raspberry Pi firmware
GH_ACCOUNT=	raspberrypi
GH_PROJECT=	firmware
GH_TAGNAME=	1.20170215
DISTNAME=	${GH_ACCOUNT}-${GH_PROJECT}-${GH_TAGNAME}

CATEGORIES=	sysutils

# Broadcom/Raspberry Pi license
# allows redistrubtion of binary files
# only allows them to be used in relation to Raspberry Pi
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

PKG_ARCH=		*

NO_BUILD=		Yes
NO_TEST=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/raspberrypi-firmware/
	cp -r ${WRKSRC}/boot/ ${PREFIX}/share/raspberrypi-firmware/boot/

.include <bsd.port.mk>
