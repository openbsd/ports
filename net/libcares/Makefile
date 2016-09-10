# $OpenBSD: Makefile,v 1.17 2016/09/10 13:03:40 ajacoutot Exp $

COMMENT=	asynchronous resolver library

V=		1.10.0
DISTNAME=	c-ares-${V}
PKGNAME=	libcares-${V}
CATEGORIES=	net devel
MASTER_SITES=	${HOMEPAGE}download/
REVISION=	1

SHARED_LIBS=	cares	2.5

HOMEPAGE=	http://c-ares.haxx.se/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
