# $OpenBSD: Makefile,v 1.20 2019/07/12 20:48:30 sthen Exp $

COMMENT=	asynchronous resolver library

V=		1.13.0
DISTNAME=	c-ares-${V}
PKGNAME=	libcares-${V}
CATEGORIES=	net devel
MASTER_SITES=	${HOMEPAGE}download/

SHARED_LIBS +=  cares                3.1      # 4.0

HOMEPAGE=	http://c-ares.haxx.se/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# MIT
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
