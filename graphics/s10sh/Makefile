# $OpenBSD: Makefile,v 1.3 2001/11/15 13:28:52 wilfried Exp $

COMMENT=	"S10sh - a Canon PowerShot digital camera driver"

DISTNAME=	s10sh-0.2.0
CATEGORIES=	graphics
NEED_VERSION=	1.498
MASTER_SITES=	http://www.kyuzz.org/antirez/s10sh-src/

HOMEPAGE=	http://www.kyuzz.org/antirez/s10sh.html

MAINTAINER=	Markus Friedl <markus@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

DOCDIR=		${PREFIX}/share/doc/s10sh

LIB_DEPENDS=	usb.3::devel/libusb

CONFIGURE_STYLE= simple

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/s10sh ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/Protocol ${DOCDIR}

.include <bsd.port.mk>
