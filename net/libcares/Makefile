# $OpenBSD: Makefile,v 1.7 2011/01/16 00:17:37 jasper Exp $

COMMENT=	asynchronous resolver library

V=		1.7.3
DISTNAME=	c-ares-${V}
PKGNAME=	libcares-${V}
CATEGORIES=	net devel
MASTER_SITES=	${HOMEPAGE}

SHARED_LIBS=	cares	2.0

HOMEPAGE=	http://daniel.haxx.se/projects/c-ares/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

.include <bsd.port.mk>
