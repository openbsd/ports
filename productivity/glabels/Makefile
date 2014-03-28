# $OpenBSD: Makefile,v 1.38 2014/03/28 07:20:47 ajacoutot Exp $

COMMENT =	labels and business card designer

GNOME_PROJECT =	glabels
GNOME_VERSION =	3.2.0
REVISION =	1

CATEGORIES =	productivity graphics

SHARED_LIBS +=  glabels-3.0               0.0 # 8.0
SHARED_LIBS +=  glbarcode-3.0             0.0 # 0.0

HOMEPAGE =	http://glabels.sourceforge.net

# GPLv3/LGPLv3/MIT      
# Attribution-ShareAlike 3.0 Unported
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender asn1 atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject camel-1.2 com_err croco-0.6
WANTLIB += crypto db dbus-1 ebackend-1.2 ebook-1.2 ebook-contacts-1.2
WANTLIB += edata-book-1.2 edataserver-1.2 expat ffi fontconfig
WANTLIB += freetype gck-1 gcr-base-3 gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += graphite2 gssapi gthread-2.0 gtk-3 harfbuzz heimbase
WANTLIB += iec16022 krb5 m nspr4 nss3 nssutil3 p11-kit pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4
WANTLIB += png popt pthread pthread-stubs qrencode roken rsvg-2
WANTLIB += secret-1 smime3 softokn3 soup-2.4 sqlite3 ssl3 wind
WANTLIB += xcb xcb-render xcb-shm xml2 z zint icudata icui18n icuuc

MODULES =	devel/gettext \
		x11/gnome \
		devel/dconf

BUILD_DEPENDS =	graphics/barcode

LIB_DEPENDS =	databases/evolution-data-server \
		graphics/iec16022 \
		graphics/libqrencode \
		graphics/zint \
		x11/gnome/librsvg \
		x11/gtk+3

MODGNOME_TOOLS = 	yelp
MODGNOME_DESKTOP_FILE =	Yes
MODGNOME_ICON_CACHE =	Yes
MODGNOME_MIME_FILE =	Yes

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
