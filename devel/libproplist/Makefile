# $OpenBSD: Makefile,v 1.4 1999/10/26 21:02:13 jasoni Exp $

DISTNAME=	libPropList-0.9.1
PKGNAME=	libproplist-0.9.1	
CATEGORIES=	devel
MASTER_SITES=	ftp://ftp.windowmaker.org/pub/libs/

NEED_VERSION=	1.73

MAINTAINER=	jasoni@openbsd.org

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

.include <bsd.port.mk>
