# $OpenBSD: Makefile,v 1.16 2001/05/23 20:45:02 jakob Exp $

COMMENT=		command line tool to synchronize Palm pilot to AvantGo

VERSION=		2.0.6
DISTNAME=		malsync_${VERSION}.src
PKGNAME=		malsync-${VERSION}
CATEGORIES=             comms
NEED_VERSION=		1.408

HOMEPAGE=		http://www.tomw.org/malsync/

MAINTAINER=		Xiao Hui LOO <71@becile.com>

PERMIT_PACKAGE_CDROM=	Yes	#MPL
PERMIT_PACKAGE_FTP=	Yes	#MPL
PERMIT_DISTFILES_CDROM= Yes	#MPL
PERMIT_DISTFILES_FTP=	Yes	#MPL

MASTER_SITES=		http://www.tomw.org/malsync/

LIB_DEPENDS=		pisock.3::comms/pilot-link

USE_GMAKE=		Yes
WRKDIST=		${WRKDIR}/malsync/mal/client/unix

post-extract:
	(cd ${WRKDIST}; ${GMAKE} clean)

.include <bsd.port.mk>
