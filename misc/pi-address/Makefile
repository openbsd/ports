# $OpenBSD: Makefile,v 1.2 1999/09/23 21:35:22 jakob Exp $

DISTNAME=	pi-address-0.3.2
CATEGORIES=	misc x11

MAINTAINER=	jakob@openbsd.org

MASTER_SITES=	ftp://linux.in-berlin.de/pub/pilot/ \
		ftp://pv915.pv.reshsg.uci.edu/pub/pilot/

LIB_DEPENDS=	pisock:${PORTSDIR}/comms/pilot-link \
		kde:${PORTSDIR}/x11/kdelibs

MAKE_ENV+=	QTDIR=${X11BASE} PILOT_LINK=${LOCALBASE}

.include <bsd.port.mk>
