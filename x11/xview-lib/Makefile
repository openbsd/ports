# $OpenBSD: Makefile,v 1.9 2000/03/23 23:09:03 turan Exp $

BROKEN=         this port is so wrong.

DISTNAME=	xview-lib
PKGNAME=	xview-lib-3.2.1
MASTER_SITES=	${MASTER_SITE_LOCAL}
DISTFILES=	xview3.2p1-X11R6.tar.gz
CATEGORIES=	x11
NEED_VERSION=	1.223

MAINTAINER=	angelos@openbsd.org

#DEPENDS=        x11/xview-config

USE_IMAKE=	Yes
WRKDIST=	${WRKDIR}/xview3.2p1-X11R6/config

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
