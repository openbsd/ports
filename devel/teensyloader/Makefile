# $OpenBSD: Makefile,v 1.11 2019/07/12 20:46:02 sthen Exp $

COMMENT=	in-system programmer for Teensy boards

V=		2.1
REVISION=	0

DISTNAME=	teensy_loader_cli.${V}
PKGNAME=	teensyloader-${V}
CATEGORIES=	devel

GH_COMMIT=	001da416bc362ff24485ff97e3a729bd921afe98
GH_ACCOUNT=	PaulStoffregen
GH_PROJECT=	teensy_loader_cli

HOMEPAGE=	http://www.pjrc.com/teensy/

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB=		c pthread usb

LIB_DEPENDS=		devel/libusb-compat

CONFIGURE_STYLE=	None
MAKE_FILE=		Makefile.bsd
NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/teensyloader ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/teensy
	${INSTALL_DATA} ${WRKSRC}/*.hex ${PREFIX}/share/examples/teensy

.include <bsd.port.mk>
