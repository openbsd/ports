# $OpenBSD: Makefile,v 1.45 2015/05/01 07:34:28 ajacoutot Exp $

COMMENT =	labels and business card designer

GNOME_PROJECT =	glabels
GNOME_VERSION =	3.2.1
REVISION =	2

CATEGORIES =	productivity graphics

SHARED_LIBS +=  glabels-3.0               0.0 # 8.0
SHARED_LIBS +=  glbarcode-3.0             0.0 # 0.0

HOMEPAGE =	http://glabels.sourceforge.net

# GPLv3/LGPLv3/MIT      
# Attribution-ShareAlike 3.0 Unported
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject camel-1.2 croco-0.6 db dbus-1
WANTLIB += ebackend-1.2 ebook-1.2 ebook-contacts-1.2 edata-book-1.2
WANTLIB += edataserver-1.2 epoxy expat ffi fontconfig freetype
WANTLIB += gck-1 gcr-base-3 gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gpg-error graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz icudata icui18n icuuc iec16022
WANTLIB += lzma m nspr4 nss3 nssutil3 p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png popt pthread
WANTLIB += pthread-stubs qrencode rsvg-2 secret-1 smime3 softokn3
WANTLIB += soup-2.4 sqlite3 ssl3 xcb xcb-render xcb-shm xml2 z
WANTLIB += zint

MODULES =	devel/gettext \
		x11/gnome \
		devel/dconf

LIB_DEPENDS =	databases/evolution-data-server \
		graphics/iec16022 \
		graphics/libqrencode \
		graphics/zint \
		x11/gnome/librsvg \
		x11/gtk+3

MODGNOME_TOOLS += desktop-file-utils gtk-update-icon-cache shared-mime-info yelp
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
