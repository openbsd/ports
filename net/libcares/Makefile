# $OpenBSD: Makefile,v 1.11 2012/06/24 10:08:42 ajacoutot Exp $

COMMENT=	asynchronous resolver library

V=		1.9.1
DISTNAME=	c-ares-${V}
PKGNAME=	libcares-${V}
CATEGORIES=	net devel
MASTER_SITES=	${HOMEPAGE}download/

SHARED_LIBS=	cares	2.4

HOMEPAGE=	http://c-ares.haxx.se/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
