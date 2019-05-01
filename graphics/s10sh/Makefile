# $OpenBSD: Makefile,v 1.15 2019/05/01 20:12:52 danj Exp $

COMMENT=	S10sh - a Canon PowerShot digital camera driver

DISTNAME=	s10sh-0.2.0
REVISION =	4
CATEGORIES=	graphics
MASTER_SITES=	http://www.kyuzz.org/antirez/s10sh-src/

HOMEPAGE=	http://www.kyuzz.org/antirez/s10sh.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	readline c termcap usb pthread

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
