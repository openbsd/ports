# $OpenBSD: Makefile,v 1.10 2000/03/30 21:23:37 espie Exp $

DISTNAME=	pi-address-0.3.4
CATEGORIES=	misc x11
NEED_VERSION=	 1.230

MAINTAINER=	jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	ftp://linux.in-berlin.de/pub/pilot/ \
		ftp://pv915.pv.reshsg.uci.edu/pub/pilot/

LIB_DEPENDS=	pisock::comms/pilot-link \
		kde::x11/kde/libs

MAKE_ENV+=	QTDIR=${X11BASE} PILOT_LINK=${LOCALBASE}

FAKE=		yes

.include <bsd.port.mk>
