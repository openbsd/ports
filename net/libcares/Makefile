# $OpenBSD: Makefile,v 1.3 2009/01/28 17:08:49 sthen Exp $

COMMENT =	asynchronous resolver library

V =		1.6.0
DISTNAME =	c-ares-${V}
PKGNAME =	libcares-${V}
CATEGORIES =	net devel

SHARED_LIBS =	cares 1.0

HOMEPAGE =	http://daniel.haxx.se/projects/c-ares/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${HOMEPAGE}

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED}

.include <bsd.port.mk>
