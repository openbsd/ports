# $OpenBSD: Makefile,v 1.9 2000/03/23 23:09:03 turan Exp $

BROKEN=		this port is so wrong.

DISTNAME=	xview-clients
PKGNAME=	xview-clients-3.2.1
MASTER_SITES=	${MASTER_SITE_LOCAL}
DISTFILES=	xview3.2p1-X11R6.tar.gz
CATEGORIES=	x11
NEED_VERSION=	1.223

#DEPENDS=        x11/xview-lib

WRKDIST=	${WRKDIR}/xview3.2p1-X11R6/clients
USE_X11=	Yes

post-configure:
	cd $(WRKSRC)/.. && make SUBDIRS=clients depend

pre-install:
	@cd ${WRKSRC} && make ${MAKE_FLAGS} -f ${MAKE_FILE} install.man

.include <bsd.port.mk>
