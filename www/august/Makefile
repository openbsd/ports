# $OpenBSD: Makefile,v 1.9 2001/11/13 22:13:24 espie Exp $

COMMENT=	"html editor designed for the experienced web designer"

DISTNAME=	august0.63b.src
PKGNAME=	august-0.63b
CATEGORIES=     www
NEED_VERSION=	1.496

HOMEPAGE=	http://www.lls.se/~johanb/august/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=   ${HOMEPAGE}

RUN_DEPENDS=    ::www/weblint \
		::graphics/ImageMagick \
		::x11/tk/8.3

NO_BUILD=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/august
	${INSTALL_PROGRAM} ${WRKSRC}/august ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/specchars.txt ${PREFIX}/share/doc/august

.include <bsd.port.mk>
