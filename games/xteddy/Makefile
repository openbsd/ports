# $OpenBSD: Makefile,v 1.3 1999/09/27 14:19:02 brad Exp $

DISTNAME=	xteddy-1.0
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.leo.org/pub/comp/usenet/comp.sources.x/xteddy/

NO_CDROM=	"Can only be distributed for free"

NEED_VERSION=	1.114

MAINTAINER=	felix@mamba.pond.sub.org

USE_IMAKE=	yes

post-install:
	@${STRIP} ${PREFIX}/bin/xteddy

.include <bsd.port.mk>
