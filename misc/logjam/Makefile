# $OpenBSD: Makefile,v 1.39 2013/10/26 08:02:57 ajacoutot Exp $

COMMENT =	GTK client for LiveJournal

DISTNAME =	logjam-4.6.1
CATEGORIES =	misc x11
REVISION =	6

HOMEPAGE =	http://andy-shev.github.com/LogJam/

# GPLv2
PERMIT_PACKAGE_CDROM =   Yes


MASTER_SITES =	${HOMEPAGE}/download/
EXTRACT_SUFX =	.tar.bz2

MODULES =	devel/gettext \
		textproc/intltool

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo dbus-1 dbus-glib-1 expat
WANTLIB += ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs soup-2.4 sqlite3 xcb xcb-render
WANTLIB += xcb-shm xml2 z

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
			--without-xmms \
			--without-banshee

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
