# OpenBSD makefile for:	freeciv
# Version required:	1.53
# Date created:		May 19 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 1998/06/13 06:50:23 mickey Exp $
#

DISTNAME=	freeciv-1.6.3
CATEGORIES=	games
MASTER_SITES=	ftp://freeciv.ultraviolet.org/pub/freeciv/
EXTRACT_SUFX=	.tar.gz

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	Xpm\\.4\\.:${PORTSDIR}/graphics/xpm

WRKSRC=		${WRKDIR}/freeciv-1.6.3
USE_IMAKE=      	yes
NO_INSTALL_MANPAGES=	yes

post-install:
	${MKDIR} ${PREFIX}/lib/X11/freeciv
	${INSTALL_DATA} $(WRKSRC)/data/Freeciv $(WRKSRC)/data/*.xpm \
	  ${PREFIX}/lib/X11/freeciv
.include <bsd.port.mk>
