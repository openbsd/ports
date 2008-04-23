# $OpenBSD: Makefile,v 1.2 2008/04/23 09:57:04 ajacoutot Exp $

COMMENT =	asynchronous resolver library

V =		1.5.1
DISTNAME =	c-ares-${V}
PKGNAME =	libcares-${V}p0
CATEGORIES =	net devel

SHARED_LIBS =	cares 0.0	# .2.0

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
