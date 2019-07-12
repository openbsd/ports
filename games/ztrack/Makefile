# $OpenBSD: Makefile,v 1.7 2019/07/12 20:46:28 sthen Exp $

COMMENT=		ncurses based pseudo-3D driving game

DISTNAME=		ztrack-1.0
CATEGORIES=		games
REVISION=		0

# Public Domain
PERMIT_PACKAGE=	Yes

WANTLIB=		c curses

MASTER_SITES=		${MASTER_SITE_SUNSITE:=games/arcade/}

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS} -DHAVE_RANDOM"

WRKDIST= 		${WRKDIR}/ztrack

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ztrack ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ztrack.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
