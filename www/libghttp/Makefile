# $OpenBSD: Makefile,v 1.2 1999/06/14 17:37:32 brad Exp $

DISTNAME=	libghttp-1.0.2
CATEGORIES=	www
MASTER_SITES=	$(MASTER_SITE_GNOME)
MASTER_SITE_SUBDIR= sources/libghttp

NEED_VERSION=	1.73

MAINTAINER=	brad@openbsd.org

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-install:
	@${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
