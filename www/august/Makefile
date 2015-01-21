# $OpenBSD: Makefile,v 1.25 2015/01/21 06:23:35 bentley Exp $

COMMENT=	html editor designed for the experienced web designer

DISTNAME=	august0.63b.src
PKGNAME=	august-0.63b
REVISION=	3
CATEGORIES=	www

HOMEPAGE=	http://www.erjobe.info/index.php?n=Main.August

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE:=../mainwiki/pmwiki/uploads/Main/August/}

MODULES=	x11/tk

RUN_DEPENDS=	www/weblint \
		graphics/ImageMagick \
		${MODTK_RUN_DEPENDS}

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	@${MODTCL_WISH_ADJ} ${WRKSRC}/august
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/august
	${INSTALL_SCRIPT} ${WRKSRC}/august ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/specchars.txt ${PREFIX}/share/doc/august

.include <bsd.port.mk>
