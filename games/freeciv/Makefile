# OpenBSD makefile for:	freeciv
# Version required:	1.53
# Date created:		May 19 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.3 1998/06/13 23:26:43 marc Exp $
#

DISTNAME=	freeciv-1.6.3
CATEGORIES=	games
MASTER_SITES=	ftp://freeciv.ultraviolet.org/pub/freeciv/
EXTRACT_SUFX=	.tar.gz

MAINTAINER=	angelos@openbsd.org

OS_RELEASE!=	uname -r
OS_HAS_XPM=	2.3
.if ( ${OS_RELEASE} < ${OS_HAS_XPM} )
LIB_DEPENDS=	Xpm\\.4\\.:${PORTSDIR}/graphics/xpm
.endif

WRKSRC=		${WRKDIR}/freeciv-1.6.3
USE_IMAKE=      	yes
NO_INSTALL_MANPAGES=	yes

post-install:
	${MKDIR} ${PREFIX}/lib/X11/freeciv
	${INSTALL_DATA} $(WRKSRC)/data/Freeciv $(WRKSRC)/data/*.xpm \
	  ${PREFIX}/lib/X11/freeciv
.include <bsd.port.mk>
