# OpenBSD makefile for: xview-config
# Version required:     3.2p1-X11R6
# Date created:         29 April 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/04/29 17:22:46 angelos Exp $
#

DISTNAME=	xview-config-3.2.1
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_LOCAL}
DISTFILES=	xview3.2p1-X11R6.tar.gz

WRKSRC=      	${WRKDIR}/xview3.2p1-X11R6/config
USE_IMAKE=	yes

post-extract:
	@chmod -R go+rX ${WRKDIR}

do-build:

.include <bsd.port.mk>
