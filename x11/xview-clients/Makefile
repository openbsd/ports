# $OpenBSD: Makefile,v 1.2 1999/07/18 09:27:18 brad Exp $

DISTNAME=	xview-clients
PKGNAME=	xview-clients-3.2.1
CATEGORIES=	x11

DEPENDS=        ${PORTSDIR}/x11/xview-lib

WRKSRC=      	${PORTSDIR}/x11/xview-config/work/xview3.2p1-X11R6/clients
NO_WRKDIR=	yes
USE_X11=	yes

do-fetch:
do-extract:	# don't use NO_EXTRACT, dependency won't work

post-configure:
	(cd $(WRKSRC)/..; $(MAKE) SUBDIRS=clients depend)

pre-install:
	@(cd ${WRKSRC}; ${MAKE} ${MAKE_FLAGS} ${MAKEFILE} install.man)

.include <bsd.port.mk>
