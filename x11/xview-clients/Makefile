# $OpenBSD: Makefile,v 1.5 2000/02/12 01:00:28 espie Exp $

DISTNAME=	xview-clients
PKGNAME=	xview-clients-3.2.1
CATEGORIES=	x11
NEED_VERSION=	1.195

DEPENDS=        ${PORTSDIR}/x11/xview-lib

WRKDIST=      	${PORTSDIR}/x11/xview-config/work/xview3.2p1-X11R6/clients
USE_X11=	yes

do-fetch:
do-extract:	# don't use NO_EXTRACT, dependency won't work

post-configure:
	cd $(WRKSRC)/.. && make SUBDIRS=clients depend

pre-install:
	@cd ${WRKSRC} && make ${MAKE_FLAGS} -f ${MAKEFILE} install.man

.include <bsd.port.mk>
