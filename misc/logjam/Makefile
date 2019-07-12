# $OpenBSD: Makefile,v 1.47 2019/07/12 21:07:46 sthen Exp $

COMMENT =	GTK client for LiveJournal

DISTNAME =	logjam-4.6.2
REVISION =	3
CATEGORIES =	misc x11

HOMEPAGE =	http://andy-shev.github.com/LogJam/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo dbus-1 dbus-glib-1 expat ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz iconv intl lzma m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += soup-2.4 sqlite3 xcb xcb-render xcb-shm xml2 z

MASTER_SITES =	${HOMEPAGE}/download/
EXTRACT_SUFX =	.tar.bz2

MODULES =	textproc/intltool


LIB_DEPENDS =	devel/libsoup \
		textproc/libxml \
		x11/dbus-glib \
		x11/gtk+2

RUN_DEPENDS =	devel/desktop-file-utils

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-libsoup \
			--with-sqlite3 \
			--without-librsvg \
			--without-gtkspell \
			--without-gtkhtml314 \
			--without-banshee

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
