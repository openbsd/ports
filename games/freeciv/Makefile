# OpenBSD makefile for:	freeciv
# Version required:	1.53
# Date created:		May 19 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/19 23:44:24 angelos Exp $
#

DISTNAME=	freeciv153
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.daimi.aau.dk/pub/stud/pjunold/freeciv/
EXTRACT_SUFX=	.tar.gz

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	Xpm\\.4\\.:${PORTSDIR}/graphics/xpm

WRKSRC=		${WRKDIR}/freeciv
USE_IMAKE=      	yes
NO_INSTALL_MANPAGES=	yes

post-install:
	${MKDIR} ${PREFIX}/lib/X11/freeciv
	${INSTALL_DATA} $(WRKSRC)/data/Freeciv $(WRKSRC)/data/*.xpm \
	  ${PREFIX}/lib/X11/freeciv
.include <bsd.port.mk>
