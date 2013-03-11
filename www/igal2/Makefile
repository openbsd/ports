# $OpenBSD: Makefile,v 1.3 2013/03/11 11:44:42 espie Exp $

COMMENT=	online Image GALlery generator

DISTNAME=	igal2-2.0
REVISION=	0
CATEGORIES=	www graphics

HOMEPAGE=	http://igal.trexler.at/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

RUN_DEPENDS=	graphics/ImageMagick \
		graphics/jpeg \
		graphics/jhead

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

DATADIR=	${PREFIX}/share/igal2

do-configure:
	@perl -pi -e "s,/usr/local,${PREFIX},g;" \
		-e "s,${PREFIX}/lib/igal2,${DATADIR},g;" ${WRKSRC}/igal2{,.1}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/igal2 ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/igal2.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${DATADIR}
	${INSTALL_DATA} ${WRKSRC}/*.{css,html,png} ${DATADIR}

.include <bsd.port.mk>
