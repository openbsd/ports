# $OpenBSD: Makefile,v 1.3 1999/04/01 00:29:06 brad Exp $

DISTNAME=	libPropList-0.8.3
CATEGORIES=	devel
MASTER_SITES=	ftp://ftp.windowmaker.org/pub/libs/

NEED_VERSION=	1.73

MAINTAINER=	jasoni@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

.include <bsd.port.mk>
