# $OpenBSD: Makefile,v 1.10 2014/05/11 12:10:03 sthen Exp $

COMMENT=	online Image GALlery generator

V=		1.4.7
DISTNAME=	igal-$V-wt
PKGNAME=	igal-${V}
REVISION=	2
CATEGORIES=	www graphics

HOMEPAGE=	http://trexler.at/igal/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

RUN_DEPENDS=	graphics/ImageMagick \
		graphics/jpeg \
		graphics/jhead

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

DATADIR=	${PREFIX}/share/igal

do-configure:
	@${SUBST_CMD} ${WRKSRC}/igal{,.1}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/igal ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/igal.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${DATADIR}
	${INSTALL_DATA} ${WRKSRC}/*.{css,html,png} ${DATADIR}

.include <bsd.port.mk>
