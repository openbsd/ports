# $OpenBSD: Makefile,v 1.5 2000/02/12 01:00:28 espie Exp $

DISTNAME=	xview-lib
PKGNAME=	xview-lib-3.2.1
CATEGORIES=	x11

NEED_VERSION=	1.191

MAINTAINER=	angelos@openbsd.org

DEPENDS=        ${PORTSDIR}/x11/xview-config

USE_IMAKE=	yes
WRKDIST=      	${PORTSDIR}/x11/xview-config/work/xview3.2p1-X11R6

do-fetch:
do-extract:	# don't use NO_EXTRACT, dependency won't work

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
