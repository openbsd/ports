# $OpenBSD: Makefile,v 1.19 2002/03/21 20:46:23 espie Exp $

COMMENT=		"command line tool to synchronize Palm pilot to AvantGo"

VERSION=		2.0.6
DISTNAME=		malsync_${VERSION}.src
PKGNAME=		malsync-${VERSION}
CATEGORIES=             comms palm
NEED_VERSION=		1.515

HOMEPAGE=		http://www.tomw.org/malsync/

MAINTAINER=		Xiao Hui LOO <71@becile.com>

# MPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		pisock.3::comms/pilot-link

USE_GMAKE=		Yes
WRKDIST=		${WRKDIR}/malsync
WRKSRC=			${WRKDIST}/mal/client/unix

.include <bsd.port.mk>
