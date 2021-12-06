# $OpenBSD: Makefile,v 1.2 2021/12/06 19:05:47 kn Exp $

COMMENT =	MPRIS command-line controller and library

GH_ACCOUNT =		altdesktop
GH_PROJECT =		playerctl
GH_TAGNAME =		v2.4.1

SHARED_LIBS =		playerctl	0.0	# 2.4.1

CATEGORIES =		multimedia

# LGPL3+
PERMIT_PACKAGE =	Yes
WANTLIB =		c gio-2.0 glib-2.0 gobject-2.0

MODULES =		devel/meson

BUILD_DEPENDS =		devel/gobject-introspection \
			textproc/gtk-doc
LIB_DEPENDS =		devel/glib2

NO_TEST =		Yes

.include <bsd.port.mk>
