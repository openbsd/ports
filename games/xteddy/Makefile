# $OpenBSD: Makefile,v 1.2 1998/11/09 01:50:02 marc Exp $
#

DISTNAME=	xteddy-1.0
CATEGORIES=	games

#MAINTAINER=	Isegrim@Wunder-Nett.org
MAINTAINER=	felix@mamba.pond.sub.org

MASTER_SITES=	ftp://ftp.leo.org:/pub/comp/usenet/comp.sources.x/xteddy/

USE_IMAKE=	yes

post-install:
		strip ${PREFIX}/bin/xteddy

.include <bsd.port.mk>
