# $OpenBSD: Makefile,v 1.6 2000/03/17 00:26:38 turan Exp $

DISTNAME=	xteddy-1.0
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.leo.org/pub/comp/usenet/comp.sources.x/xteddy/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

USE_IMAKE=	yes

post-install:
	@strip ${PREFIX}/bin/xteddy

.include <bsd.port.mk>
