# $OpenBSD: Makefile,v 1.12 2022/02/22 22:33:23 sthen Exp $

COMMENT=	in-system programmer for Teensy boards

GH_TAGNAME=	2.2
GH_ACCOUNT=	PaulStoffregen
GH_PROJECT=	teensy_loader_cli
PKGNAME=	teensyloader-${GH_TAGNAME}

CATEGORIES=	devel

HOMEPAGE=	https://www.pjrc.com/teensy/

# GPLv3 only
PERMIT_PACKAGE=	Yes

WANTLIB=		c usb

LIB_DEPENDS=		devel/libusb-compat

MAKE_FILE=		Makefile.bsd
NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/teensyloader ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/teensy
	${INSTALL_DATA} ${WRKSRC}/*.hex ${PREFIX}/share/examples/teensy

.include <bsd.port.mk>
