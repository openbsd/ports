# $OpenBSD: Makefile,v 1.8 2000/03/23 18:06:33 turan Exp $

DISTNAME=	xview-lib
PKGNAME=	xview-lib-3.2.1
CATEGORIES=	x11
NEED_VERSION=	1.223

MAINTAINER=	angelos@openbsd.org

DEPENDS=        x11/xview-config

USE_IMAKE=	Yes
WRKDIST=      	${PORTSDIR}/x11/xview-config/work/xview3.2p1-X11R6
EXTRACT_ONLY=	#use this instead of NO_EXTRACT

do-fetch:

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
