# $OpenBSD: Makefile,v 1.7 2000/03/05 18:30:48 espie Exp $

DISTNAME=	xview-clients
PKGNAME=	xview-clients-3.2.1
CATEGORIES=	x11
NEED_VERSION=	1.223

DEPENDS=        ${PORTSDIR}/x11/xview-lib

WRKDIST=      	${PORTSDIR}/x11/xview-config/work/xview3.2p1-X11R6/clients
USE_X11=	Yes

do-fetch:
do-extract:	# don't use NO_EXTRACT, dependency won't work

post-configure:
	cd $(WRKSRC)/.. && make SUBDIRS=clients depend

pre-install:
	@cd ${WRKSRC} && make ${MAKE_FLAGS} -f ${MAKE_FILE} install.man

.include <bsd.port.mk>
