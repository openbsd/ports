# $OpenBSD: Makefile,v 1.21 2004/11/21 22:29:50 espie Exp $

COMMENT=		"command line tool to synchronize Palm pilot to AvantGo"

VERSION=		2.0.6
DISTNAME=		malsync_${VERSION}.src
PKGNAME=		malsync-${VERSION}
CATEGORIES=             comms palm

HOMEPAGE=		http://www.tomw.org/malsync/

MAINTAINER=		Xiao Hui LOO <71@becile.com>

# MPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		pisock.3::comms/pilot-link

USE_GMAKE=		Yes
WRKDIST=		${WRKDIR}/malsync
WRKSRC=			${WRKDIST}/mal/client/unix

NO_REGRESS=		Yes

.include <bsd.port.mk>
