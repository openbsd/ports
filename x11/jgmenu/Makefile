# $OpenBSD: Makefile,v 1.7 2020/07/03 21:13:22 sthen Exp $

COMMENT =	freedesktop-compliant menu for openbox and tint2
CATEGORIES =	x11

GH_ACCOUNT =	johanmalm
GH_PROJECT =	jgmenu
GH_TAGNAME =	v2.1
REVISION =	2

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xrandr c cairo gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 iconv intl lzma m menu-cache pango-1.0
WANTLIB += pangocairo-1.0 png pthread rsvg-2 xml2 z

# base-gcc does not understand all the warnings
COMPILER =	base-clang ports-gcc

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_BUILDDEP =	No
MODPY_SETUPTOOLS =	No

LIB_DEPENDS =	x11/gnome/librsvg \
		x11/menu-cache

RUN_DEPENDS =	devel/desktop-file-utils \
                x11/gtk+3,-guic

CONFIGURE_STYLE =	none

USE_GMAKE =	Yes
MAKE_FLAGS =	VERBOSE=1

.include <bsd.port.mk>
