# OpenBSD makefile for: xview-lib
# Version required:     3.2p1-X11R6
# Date created:         June 7 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/06/08 00:30:55 angelos Exp $
#

DISTNAME=	xview-lib
PKGNAME=	xview-lib-3.2.1
CATEGORIES=	x11

DEPENDS=        ${PORTSDIR}/x11/xview-config

WRKSRC=      	${PORTSDIR}/x11/xview-config/work/xview3.2p1-X11R6
USE_IMAKE=	yes
NO_WRKDIR=      yes

do-fetch:
do-extract:	# don't use NO_EXTRACT, dependency won't work

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
