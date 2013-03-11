# $OpenBSD: Makefile,v 1.12 2013/03/11 11:07:39 espie Exp $

COMMENT=	SDL clone of the popular Game of Life

DISTNAME=	life-1.0
REVISION =	1
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	games

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m pthread stdc++ SDL

NO_TEST=	Yes

LIB_DEPENDS=	devel/sdl

WRKDIST=${WRKDIR}/life

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/life ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/life
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/life

.include <bsd.port.mk>
