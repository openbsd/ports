# $OpenBSD: Makefile,v 1.2 1999/10/09 17:46:05 brad Exp $

DISTNAME=	libxml-1.0.0
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= sources/libxml

NEED_VERSION=	1.73

MAINTAINER=	rohee@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
