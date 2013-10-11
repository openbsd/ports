# $OpenBSD: Makefile,v 1.5 2013/10/11 23:49:41 naddy Exp $

COMMENT=		ncurses based pseudo-3D driving game

DISTNAME=		ztrack-1.0
CATEGORIES=		games

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c ncurses

MASTER_SITES=		${MASTER_SITE_SUNSITE:=games/arcade/}

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS} -DHAVE_RANDOM"

WRKDIST= 		${WRKDIR}/ztrack

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ztrack ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ztrack.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
