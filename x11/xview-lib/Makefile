# $OpenBSD: Makefile,v 1.2 1999/02/21 04:26:17 marc Exp $
#

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
