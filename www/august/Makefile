# $OpenBSD: Makefile,v 1.6 2000/12/10 15:00:14 kevlo Exp $

DISTNAME=	august0.62b.src
PKGNAME=	august-0.62b
CATEGORIES=     www
NEED_VERSION=	1.341

HOMEPAGE=	http://www.lls.se/~johanb/august/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=   ${HOMEPAGE}

RUN_DEPENDS=    weblint::www/weblint \
		identify::graphics/ImageMagick \
		wish8.3::x11/tk/8.3

NO_BUILD=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/august
	${INSTALL_PROGRAM} ${WRKSRC}/august ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/specchars.txt ${PREFIX}/share/doc/august

.include <bsd.port.mk>
