# $OpenBSD: Makefile,v 1.2 2001/10/24 14:37:25 lebel Exp $

COMMENT=	"complex rogue-style game of dungeon exploration"

VERSION=	0.90.4
PKGNAME=	omega-${VERSION}
DISTNAME=	${PKGNAME}-src
CATEGORIES=     games
NEED_VERSION=	1.474
MASTER_SITES=   http://www.alcyone.com/binaries/omega/

MAINTAINER=     David Lebel <lebel@openbsd.org>

HOMEPAGE=	http://www.alcyone.com/max/projects/omega/

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WRKDIST=        ${WRKDIR}/omega
WRKSRC=         ${WRKDIST}

NO_REGRESS=	Yes

ALL_TARGET=

.include <bsd.port.mk>
