# $OpenBSD: Makefile,v 1.3 1999/07/18 09:27:19 brad Exp $

DISTNAME=	xview-lib
PKGNAME=	xview-lib-3.2.1
CATEGORIES=	x11

NEED_VERSION=	1.64

MAINTAINER=	angelos@openbsd.org

DEPENDS=        ${PORTSDIR}/x11/xview-config

USE_IMAKE=	yes
NO_WRKDIR=      yes
WRKSRC=      	${PORTSDIR}/x11/xview-config/work/xview3.2p1-X11R6

do-fetch:
do-extract:	# don't use NO_EXTRACT, dependency won't work

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
