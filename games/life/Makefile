# $OpenBSD: Makefile,v 1.10 2010/11/08 15:54:54 espie Exp $

COMMENT=	SDL clone of the popular Game of Life

DISTNAME=	life-1.0
REVISION =	1
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	games

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m pthread stdc++ SDL

NO_REGRESS=	Yes

LIB_DEPENDS=	::devel/sdl

WRKDIST=${WRKDIR}/life

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/life ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/life
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/life

.include <bsd.port.mk>
