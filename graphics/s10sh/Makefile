# $OpenBSD: Makefile,v 1.17 2019/07/12 20:47:09 sthen Exp $

COMMENT=	S10sh - a Canon PowerShot digital camera driver

DISTNAME=	s10sh-0.2.0
REVISION =	5
CATEGORIES=	graphics
MASTER_SITES=	http://www.kyuzz.org/antirez/s10sh-src/

HOMEPAGE=	http://www.kyuzz.org/antirez/s10sh.html

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += c curses pthread readline usb

DOCDIR=		${PREFIX}/share/doc/s10sh

LIB_DEPENDS=	devel/libusb-compat

MAKE_FLAGS=	CC="${CC}"

CONFIGURE_STYLE= simple

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/s10sh ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/{README,Protocol} ${DOCDIR}

.include <bsd.port.mk>
