# $OpenBSD: Makefile,v 1.14 2019/05/17 16:19:38 sthen Exp $

COMMENT=	complex rogue-style game of dungeon exploration

VERSION=	0.90.4
DISTFILES=	omega-${VERSION}-src.tar.gz
DISTNAME=	omega-${VERSION}
REVISION =	3
CATEGORIES=     games
MASTER_SITES=   http://www.alcyone.com/binaries/omega/

HOMEPAGE=	http://www.alcyone.com/max/projects/omega/

# LGPL
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c curses

WRKDIST=        ${WRKDIR}/omega
WRKSRC=         ${WRKDIST}

NO_TEST=	Yes

ALL_TARGET=

.include <bsd.port.mk>
