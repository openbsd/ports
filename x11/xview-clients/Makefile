# $OpenBSD: Makefile,v 1.3 2000/02/11 00:37:40 espie Exp $

DISTNAME=	xview-clients
PKGNAME=	xview-clients-3.2.1
CATEGORIES=	x11
NEED_VERSION=	1.191

DEPENDS=        ${PORTSDIR}/x11/xview-lib

WRKDIST=      	${PORTSDIR}/x11/xview-config/work/xview3.2p1-X11R6/clients
NO_WRKDIR=	yes
USE_X11=	yes

do-fetch:
do-extract:	# don't use NO_EXTRACT, dependency won't work

post-configure:
	(cd $(WRKSRC)/..; $(MAKE) SUBDIRS=clients depend)

pre-install:
	@(cd ${WRKSRC}; ${MAKE} ${MAKE_FLAGS} ${MAKEFILE} install.man)

.include <bsd.port.mk>
