# $OpenBSD: Makefile,v 1.4 1999/10/06 20:47:02 rohee Exp $

DISTNAME=	xteddy-1.0
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.leo.org/pub/comp/usenet/comp.sources.x/xteddy/

NO_CDROM=	"Can only be distributed for free"

NEED_VERSION=	1.114

MAINTAINER=	hannah@mamba.pond.sub.org

USE_IMAKE=	yes

post-install:
	@${STRIP} ${PREFIX}/bin/xteddy

.include <bsd.port.mk>
