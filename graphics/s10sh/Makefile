# $OpenBSD: Makefile,v 1.5 2002/10/27 00:03:16 naddy Exp $

COMMENT=	"S10sh - a Canon PowerShot digital camera driver"

DISTNAME=	s10sh-0.2.0
CATEGORIES=	graphics
MASTER_SITES=	http://www.kyuzz.org/antirez/s10sh-src/

HOMEPAGE=	http://www.kyuzz.org/antirez/s10sh.html

MAINTAINER=	Markus Friedl <markus@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

DOCDIR=		${PREFIX}/share/doc/s10sh

LIB_DEPENDS=	usb::devel/libusb

CONFIGURE_STYLE= simple

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/s10sh ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/Protocol ${DOCDIR}

.include <bsd.port.mk>
