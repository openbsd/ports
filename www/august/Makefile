# $OpenBSD: Makefile,v 1.11 2002/10/29 01:30:41 naddy Exp $

COMMENT=	"html editor designed for the experienced web designer"

DISTNAME=	august0.63b.src
PKGNAME=	august-0.63b
CATEGORIES=     www

HOMEPAGE=	http://www.lls.se/~johanb/august/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=   ${HOMEPAGE}

RUN_DEPENDS=    :weblint-*:www/weblint \
		:ImageMagick-*:graphics/ImageMagick \
		:tk-8.3.*:x11/tk/8.3

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/august
	${INSTALL_PROGRAM} ${WRKSRC}/august ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/specchars.txt ${PREFIX}/share/doc/august

.include <bsd.port.mk>
