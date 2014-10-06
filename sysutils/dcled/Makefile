# $OpenBSD: Makefile,v 1.6 2014/10/06 21:36:32 armani Exp $

COMMENT =	userland driver for Dream Link USB LED Message Board

V =		2.2
DISTNAME =	dcled-${V}
EXTRACT_SUFX =	.tgz

CATEGORIES =	sysutils

HOMEPAGE =	http://www.last-outpost.com/~malakai/dcled/

MAINTAINER =	Jonathan Armani <armani@openbsd.org>

PERMIT_PACKAGE_CDROM = Yes

MASTER_SITES=	http://www.last-outpost.com/~malakai/dcled/

WANTLIB += c m pthread usb-1.0

LIB_DEPENDS =	devel/libusb1

NO_TEST =	Yes

FONTDIR =	${PREFIX}/share/dcled
CFLAGS +=	-DFONTDIR=\"${FONTDIR}\"
CFLAGS +=	-DDCLEDVERSION=\"${V}\"

do-build:
	cd ${WRKSRC} && \
	${CC} ${CFLAGS} `pkg-config --cflags --libs libusb-1.0` -lm dcled.c -o dcled

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dcled ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/fonts/*.dlf ${FONTDIR}

.include <bsd.port.mk>
