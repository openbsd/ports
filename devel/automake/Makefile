# $OpenBSD: Makefile,v 1.9 1999/12/12 20:43:51 brad Exp $

DISTNAME=	automake-1.4
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= automake

MAINTAINER=	jasoni@openbsd.org

GNU_CONFIGURE=	yes

post-install:
	@install-info ${PREFIX}/info/automake.info ${PREFIX}/info/dir

.include <bsd.port.mk>
