# $OpenBSD: Makefile,v 1.5 2000/02/15 05:04:49 turan Exp $

DISTNAME=	pi-address-0.3.3
CATEGORIES=	misc x11

MAINTAINER=	jakob@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MASTER_SITES=	ftp://linux.in-berlin.de/pub/pilot/ \
		ftp://pv915.pv.reshsg.uci.edu/pub/pilot/

LIB_DEPENDS=	pisock:${PORTSDIR}/comms/pilot-link \
		kde:${PORTSDIR}/x11/kdelibs

MAKE_ENV+=	QTDIR=${X11BASE} PILOT_LINK=${LOCALBASE}

.include <bsd.port.mk>
