# $OpenBSD: Makefile,v 1.7 2001/05/06 04:22:46 lebel Exp $

COMMENT=	"html editor designed for the experienced web designer"

DISTNAME=	august0.62b.src
PKGNAME=	august-0.62b
CATEGORIES=     www
NEED_VERSION=	1.402

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
