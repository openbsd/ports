# $OpenBSD: Makefile,v 1.6 1998/11/09 01:49:55 marc Exp $
#

DISTNAME=	freeciv-1.7.1
CATEGORIES=	games

MAINTAINER=	mickey@openbsd.org

MASTER_SITES=	ftp://freeciv.ultraviolet.org/pub/freeciv/

USE_IMAKE=      	yes
NO_INSTALL_MANPAGES=	yes
WRKSRC=		${WRKDIR}/freeciv-1.7.1

post-install:
	${MKDIR} ${PREFIX}/lib/X11/freeciv
	${INSTALL_DATA} $(WRKSRC)/data/Freeciv $(WRKSRC)/data/*.xpm \
	  ${PREFIX}/lib/X11/freeciv

.include <bsd.port.mk>
