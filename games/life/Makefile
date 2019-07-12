# $OpenBSD: Makefile,v 1.17 2019/07/12 20:46:20 sthen Exp $

COMMENT=	SDL clone of the popular Game of Life

DISTNAME=	life-1.0
REVISION =	3
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	games

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=		c m pthread ${COMPILER_LIBCXX} SDL

COMPILER =		base-clang ports-gcc base-gcc

NO_TEST=	Yes

LIB_DEPENDS=	devel/sdl

WRKDIST=${WRKDIR}/life

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/life ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/life
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/life

.include <bsd.port.mk>
