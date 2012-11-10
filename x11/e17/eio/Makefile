# $OpenBSD: Makefile,v 1.2 2012/11/10 14:57:13 ajacoutot Exp $

COMMENT =		async i/o library

DISTNAME =		eio-1.7.1
REVISION =		0

SHARED_LIBS +=		eio 0.0 	# 8.1

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += crypto ecore eet eina glib-2.0 jpeg m pcre pthread
WANTLIB += ssl z

MODULES =		devel/gettext

LIB_DEPENDS =		x11/e17/eina>=2.0 \
			x11/e17/eet>=2.0 \
			x11/e17/ecore>=2.0

USE_LIBTOOL =		Yes

CONFIGURE_ARGS =	--disable-doc

.include <bsd.port.mk>
