# $OpenBSD: Makefile,v 1.5 2013/01/08 08:13:28 jasper Exp $

COMMENT =		async i/o library

DISTNAME =		eio-1.7.4
REVISION =		2

SHARED_LIBS +=		eio 1.0 	# 8.4

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += crypto ecore eet eina glib-2.0 jpeg m pcre pthread
WANTLIB += ssl z

MODULES =		devel/gettext

LIB_DEPENDS =		x11/e17/eina>=3.0 \
			x11/e17/eet>=3.0 \
			x11/e17/ecore>=3.0

USE_LIBTOOL =		Yes

CONFIGURE_ARGS =	--disable-doc

.include <bsd.port.mk>
