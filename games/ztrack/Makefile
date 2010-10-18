# $OpenBSD: Makefile,v 1.2 2010/10/18 18:00:20 espie Exp $

COMMENT=		ncurses based pseudo-3D driving game

DISTNAME=		ztrack-1.0
CATEGORIES=		games

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ncurses

MASTER_SITES=		${MASTER_SITE_SUNSITE:=games/arcade/}

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS} -DHAVE_RANDOM"

WRKDIST= 		${WRKDIR}/ztrack

USE_GROFF =	Yes
NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ztrack ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ztrack.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
