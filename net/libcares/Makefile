# $OpenBSD: Makefile,v 1.22 2021/12/07 19:55:17 sthen Exp $

COMMENT=	asynchronous resolver library

V=		1.18.1
DISTNAME=	c-ares-${V}
PKGNAME=	libcares-${V}
CATEGORIES=	net devel
MASTER_SITES=	${HOMEPAGE}download/

SHARED_LIBS +=  cares                3.3      # 6.3

HOMEPAGE=	https://c-ares.haxx.se/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# MIT
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
