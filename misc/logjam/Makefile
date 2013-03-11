# $OpenBSD: Makefile,v 1.35 2013/03/11 11:23:57 espie Exp $

COMMENT =	GTK client for LiveJournal

DISTNAME =	logjam-4.6.1
CATEGORIES =	misc x11
REVISION =	3

HOMEPAGE =	http://andy-shev.github.com/LogJam/

# GPLv2
PERMIT_PACKAGE_CDROM =   Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo dbus-1 dbus-glib-1 enchant
WANTLIB += expat ffi fontconfig freetype gailutil gconf-2 gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 gtkhtml-3.14 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += soup-2.4 sqlite3 stdc++ xcb xcb-render xcb-shm xml2
WANTLIB += z

MASTER_SITES =	${HOMEPAGE}/download/
EXTRACT_SUFX =	.tar.bz2

MODULES =	devel/gettext \
		textproc/intltool

LIB_DEPENDS =	devel/libsoup \
		textproc/libxml \
		www/gtkhtml3

RUN_DEPENDS =	devel/desktop-file-utils

USE_GROFF =		Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-gtkhtml314 \
			--with-libsoup \
			--with-sqlite3 \
			--without-librsvg \
			--without-gtkspell \
			--without-xmms \
			--without-banshee

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
