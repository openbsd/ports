# $OpenBSD: Makefile,v 1.5 1999/12/09 21:20:40 brad Exp $

DISTNAME=	xteddy-1.0
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.leo.org/pub/comp/usenet/comp.sources.x/xteddy/

NO_CDROM=	"Can only be distributed for free"

MAINTAINER=	ports@openbsd.org

USE_IMAKE=	yes

post-install:
	@strip ${PREFIX}/bin/xteddy

.include <bsd.port.mk>
