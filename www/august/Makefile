# $OpenBSD: Makefile,v 1.18 2009/03/14 21:09:40 sthen Exp $

COMMENT=	html editor designed for the experienced web designer

DISTNAME=	august0.63b.src
PKGNAME=	august-0.63bp0
CATEGORIES=	www

HOMEPAGE=	http://www.bostream.nu/johanb/august/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

MODULES=	x11/tk

RUN_DEPENDS=	:weblint-*:www/weblint \
		:ImageMagick-*:graphics/ImageMagick \
		${MODTK_RUN_DEPENDS}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

do-install:
	@${MODTCL_WISH_ADJ} ${WRKSRC}/august
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/august
	${INSTALL_SCRIPT} ${WRKSRC}/august ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/specchars.txt ${PREFIX}/share/doc/august

.include <bsd.port.mk>
