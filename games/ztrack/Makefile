# $OpenBSD: Makefile,v 1.6 2019/05/20 20:52:33 sthen Exp $

COMMENT=		ncurses based pseudo-3D driving game

DISTNAME=		ztrack-1.0
CATEGORIES=		games
REVISION=		0

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c curses

MASTER_SITES=		${MASTER_SITE_SUNSITE:=games/arcade/}

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS} -DHAVE_RANDOM"

WRKDIST= 		${WRKDIR}/ztrack

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ztrack ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ztrack.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
