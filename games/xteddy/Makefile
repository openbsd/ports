# $OpenBSD: Makefile,v 1.7 2000/04/04 14:49:36 kevlo Exp $

DISTNAME=	xteddy-1.0
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.leo.org/pub/comp/usenet/comp.sources.x/xteddy/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

FAKE=		Yes
USE_IMAKE=	Yes

post-install:
	@strip ${PREFIX}/bin/xteddy

.include <bsd.port.mk>
