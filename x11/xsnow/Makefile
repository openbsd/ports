# OpenBSD makefile for:	xsnow
# Version required:	1.40
# Date created:		December 22, 1997
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/01/24 22:00:47 don Exp $
#

DISTNAME=	xsnow-1.40
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	games
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	don@OpenBSD.ORG

USE_IMAKE=	yes

pre-install:
	@${MKDIR} -p ${PREFIX}/bin
	@${MKDIR} -p ${PREFIX}/man/cat6
	@(cd ${WRKSRC}; ${MAKE} ${MAKE_FLAGS} ${MAKEFILE} install.man)

.include <bsd.port.mk>
