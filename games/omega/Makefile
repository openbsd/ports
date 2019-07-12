# $OpenBSD: Makefile,v 1.15 2019/07/12 21:02:20 sthen Exp $

COMMENT=	complex rogue-style game of dungeon exploration

VERSION=	0.90.4
DISTFILES=	omega-${VERSION}-src.tar.gz
DISTNAME=	omega-${VERSION}
REVISION =	3
CATEGORIES=     games
MASTER_SITES=   http://www.alcyone.com/binaries/omega/

HOMEPAGE=	http://www.alcyone.com/max/projects/omega/

# LGPL
PERMIT_PACKAGE=	Yes

WANTLIB += c curses

WRKDIST=        ${WRKDIR}/omega
WRKSRC=         ${WRKDIST}

NO_TEST=	Yes

ALL_TARGET=

.include <bsd.port.mk>
