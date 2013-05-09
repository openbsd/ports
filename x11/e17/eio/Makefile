# $OpenBSD: Makefile,v 1.9 2013/05/09 13:00:13 rpe Exp $

COMMENT =		async i/o library

DISTNAME =		eio-1.7.6

SHARED_LIBS +=		eio 1.0 	# 8.6

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += crypto ecore eet eina glib-2.0 jpeg m pcre pthread
WANTLIB += ssl z

MODULES =		devel/gettext

LIB_DEPENDS =		x11/e17/ecore>=1.7.6v2


CONFIGURE_ARGS =	--disable-doc

.include <bsd.port.mk>
