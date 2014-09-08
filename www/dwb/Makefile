# $OpenBSD: Makefile,v 1.2 2014/09/08 21:12:56 sthen Exp $

COMMENT =	lightweight webkit-based browser with vi-like controls

DISTNAME =	dwb-2014.03.07
REVISION =	0

CATEGORIES =	www

HOMEPAGE =	http://portix.bitbucket.org/dwb/

MAINTAINER =	Henrik Friedrichsen <henrik@diff.cc>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 atk-1.0 c cairo cairo-gobject fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gnutls gobject-2.0
WANTLIB += gtk-3 javascriptcoregtk-3.0 json-c m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread soup-2.4 webkitgtk-3.0 z

MASTER_SITES =		https://bitbucket.org/portix/dwb/downloads/

MODULES =	devel/gettext
RUN_DEPENDS =	devel/desktop-file-utils
LIB_DEPENDS =	devel/json-c \
		devel/libsoup \
		www/webkit,gtk3 \
		x11/gtk+3

MAKE_FLAGS =	GTK=3 \
		PREFIX="${TRUEPREFIX}" \
		MANDIR="${TRUEPREFIX}/man" \
		X11BASE="${X11BASE}"

USE_GMAKE =	Yes

.include <bsd.port.mk>
