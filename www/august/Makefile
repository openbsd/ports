# $OpenBSD: Makefile,v 1.3 2000/08/10 09:42:58 kevlo Exp $

DISTNAME=	august0.61b.src
PKGNAME=	august-0.61b
CATEGORIES=     www
NEED_VERSION=	1.319

MASTER_SITES=	http://www.lls.se/~johanb/august/

MAINTAINER=	kevlo@openbsd.org

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=    weblint::www/weblint \
		identify::graphics/ImageMagick \
		wish8.3::x11/tk/8.3

NO_BUILD=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/august
	${INSTALL_PROGRAM} ${WRKSRC}/august ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/specchars.txt ${PREFIX}/share/doc/august

.include <bsd.port.mk>
