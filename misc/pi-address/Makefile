# $OpenBSD: Makefile,v 1.8 2000/03/20 22:30:47 jakob Exp $

DISTNAME=	pi-address-0.3.4
CATEGORIES=	misc x11
NEED_VERSION=	1.223

MAINTAINER=	jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	ftp://linux.in-berlin.de/pub/pilot/ \
		ftp://pv915.pv.reshsg.uci.edu/pub/pilot/

LIB_DEPENDS=	pisock:comms/pilot-link \
		kde:x11/kdelibs

MAKE_ENV+=	QTDIR=${X11BASE} PILOT_LINK=${LOCALBASE}

FAKE=		yes

.include <bsd.port.mk>
