#	$OpenBSD: Makefile,v 1.12 2018/10/17 22:30:37 jsg Exp $

COMMENT=	Raspberry Pi firmware
GH_ACCOUNT=	raspberrypi
GH_PROJECT=	firmware
V=		1.20181016
GH_COMMIT=	10c1c5f9637849e8a3a70e114d3837e25987fc7c
#DISTNAME=	${GH_ACCOUNT}-${GH_PROJECT}-${GH_TAGNAME}
DISTNAME=	${GH_ACCOUNT}-${GH_PROJECT}-${V}

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
