# $OpenBSD: Makefile,v 1.4 2000/03/23 23:09:03 turan Exp $

BROKEN=         this port is so wrong.

DISTNAME=	xview-config-3.2.1
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_LOCAL}
DISTFILES=	xview3.2p1-X11R6.tar.gz
NEED_VERSION=	1.191

WRKDIST=      	${WRKDIR}/xview3.2p1-X11R6/config
USE_IMAKE=	yes

post-extract:
	@chmod -R go+rX ${WRKDIR}

do-build:

.include <bsd.port.mk>
