# $OpenBSD: Makefile,v 1.15 2015/05/22 11:31:17 ajacoutot Exp $

COMMENT=	asynchronous resolver library

V=		1.10.0
DISTNAME=	c-ares-${V}
PKGNAME=	libcares-${V}
CATEGORIES=	net devel
MASTER_SITES=	${HOMEPAGE}download/
REVISION=	0

SHARED_LIBS=	cares	2.5

HOMEPAGE=	http://c-ares.haxx.se/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
