# $OpenBSD: Makefile,v 1.8 2011/04/05 08:17:55 sthen Exp $

COMMENT=	asynchronous resolver library

V=		1.7.4
DISTNAME=	c-ares-${V}
PKGNAME=	libcares-${V}
CATEGORIES=	net devel
MASTER_SITES=	${HOMEPAGE}

SHARED_LIBS=	cares	2.1

HOMEPAGE=	http://daniel.haxx.se/projects/c-ares/

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
