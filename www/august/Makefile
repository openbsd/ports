# $OpenBSD: Makefile,v 1.16 2004/04/23 10:08:22 xsa Exp $

COMMENT=	"html editor designed for the experienced web designer"

DISTNAME=	august0.63b.src
PKGNAME=	august-0.63b
CATEGORIES=     www

HOMEPAGE=	http://www.bostream.nu/johanb/august/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=   ${HOMEPAGE}

TK_VER=		8.4

RUN_DEPENDS=    :weblint-*:www/weblint \
		:ImageMagick-*:graphics/ImageMagick \
		:tk-${TK_VER}.*:x11/tk/${TK_VER}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

do-install:
	@perl -pi -e 's,/usr/bin/wish,${LOCALBASE}/bin/wish${TK_VER},g' \
		${WRKSRC}/august
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/august
	${INSTALL_PROGRAM} ${WRKSRC}/august ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/specchars.txt ${PREFIX}/share/doc/august

.include <bsd.port.mk>
