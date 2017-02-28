# $OpenBSD: Makefile,v 1.2 2017/02/28 16:18:05 jasper Exp $

COMMENT =		recipe manager for GNOME

GNOME_PROJECT =		gnome-recipes
GNOME_VERSION =		0.18.0

CATEGORIES =		misc

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		gcc4 \
			devel/dconf \
			x11/gnome

MODGCC4_ARCHS =		*

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender archive atk-1.0 atk-bridge-2.0
WANTLIB += atspi bz2 c cairo cairo-gobject canberra crypto dbus-1
WANTLIB += enchant epoxy expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-autoar-0 gobject-2.0
WANTLIB += graphite2 gspell-1 gthread-2.0 gtk-3 harfbuzz iconv
WANTLIB += intl ltdl lz4 lzma lzo2 m ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += stdc++ vorbis vorbisfile xcb xcb-render xcb-shm z
WANTLIB += appstream-glib gcab-1.0 soup-2.4 sqlite3 uuid xml2
WANTLIB += yaml-0

LIB_DEPENDS =		audio/libcanberra \
			devel/appstream-glib \
			textproc/gspell \
			x11/gnome/autoar

MODGNOME_TOOLS =	desktop-file-utils gobject-introspection \
			gtk-update-icon-cache shared-mime-info vala

.include <bsd.port.mk>
