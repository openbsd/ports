# $OpenBSD: Makefile,v 1.6 2000/03/05 18:30:36 espie Exp $

DISTNAME=	pi-address-0.3.3
CATEGORIES=	misc x11
NEED_VERSION=	1.223

MAINTAINER=	jakob@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://linux.in-berlin.de/pub/pilot/ \
		ftp://pv915.pv.reshsg.uci.edu/pub/pilot/

LIB_DEPENDS=	pisock:comms/pilot-link \
		kde:x11/kdelibs

MAKE_ENV+=	QTDIR=${X11BASE} PILOT_LINK=${LOCALBASE}

.include <bsd.port.mk>
