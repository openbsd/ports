# $OpenBSD: Makefile,v 1.3 2004/05/22 19:54:10 jolan Exp $

COMMENT=	"SDL clone of the popular Game of Life"

DISTNAME=	life-1.0
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	games
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://w1.879.telia.com/~u87907755/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

LIB_DEPENDS=	SDL::devel/sdl

WRKDIST=${WRKDIR}/life

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/life ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/life
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/life

.include <bsd.port.mk>
