# $OpenBSD: Makefile,v 1.30 2010/12/14 22:50:58 jasper Exp $

COMMENT =	GTK client for LiveJournal

DISTNAME =	logjam-4.6.1
CATEGORIES =	misc x11

HOMEPAGE =	http://andy-shev.github.com/LogJam/

# GPLv2
PERMIT_PACKAGE_CDROM =   Yes
PERMIT_PACKAGE_FTP =     Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =   Yes

WANTLIB += GL ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo dbus-1 dbus-glib-1 drm enchant expat fontconfig
WANTLIB += freetype gailutil gconf-2 gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnutls gobject-2.0 gpg-error
WANTLIB += gthread-2.0 gtk-x11-2.0 gtkhtml-3.14 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += soup-2.4 sqlite3 stdc++ tasn1 xcb xcb-render xcb-shm
WANTLIB += xml2 z

MASTER_SITES =	${HOMEPAGE}/download/
EXTRACT_SUFX =	.tar.bz2

MODULES =	devel/gettext \
		textproc/intltool

LIB_DEPENDS =	databases/sqlite3 \
		devel/libsoup \
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
