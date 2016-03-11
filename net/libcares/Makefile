# $OpenBSD: Makefile,v 1.16 2016/03/11 19:59:15 naddy Exp $

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

.include <bsd.port.mk>
