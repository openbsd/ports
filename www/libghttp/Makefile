# $OpenBSD: Makefile,v 1.1.1.1 1999/04/18 20:53:16 brad Exp $

DISTNAME=	libghttp-1.0.2
CATEGORIES=	www
MASTER_SITES=	$(MASTER_SITE_GNOME)
MASTER_SITE_SUBDIR=	sources/libghttp

NEED_VERSION=	1.73

MAINTAINER=	brad@openbsd.org

SEPARATE_BUILD=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
