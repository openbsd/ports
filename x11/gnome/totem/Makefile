# $OpenBSD: Makefile,v 1.108 2013/09/24 18:53:31 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		official media player for GNOME

GNOME_PROJECT=		totem
GNOME_VERSION=		3.8.2
REVISION=		3

SHARED_LIBS +=  totem                     0.0 # 0.0

CATEGORIES=		multimedia

HOMEPAGE=		http://projects.gnome.org/totem/

# GPLv2 with exception clause - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender archive atk-1.0 atk-bridge-2.0
WANTLIB += atspi bz2 c cairo cairo-gobject clutter-1.0 clutter-gst-2.0
WANTLIB += clutter-gtk-1.0 cogl cogl-pango crypto curl dbus-1
WANTLIB += expat ffi fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 glib-2.0 gmime-2.6 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error graphite2 grilo-0.2
WANTLIB += gstaudio-1.0 gstbase-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += idn json-glib-1.0 lua5.1 lzma m
WANTLIB += nautilus-extension pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre peas-1.0 peas-gtk-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs quvi soup-2.4 soup-gnome-2.4
WANTLIB += sqlite3 ssl totem-plparser xcb xcb-render xcb-shm xml2
WANTLIB += z zeitgeist-2.0

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=	 	devel/gsettings-desktop-schemas \
			devel/py-gobject3 \
			multimedia/gstreamer1/plugins-good \
			multimedia/gstreamer1/plugins-bad #soundtouch

# needed for make check
BUILD_DEPENDS +=	devel/pylint

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/py-gobject3 \
			devel/py-xdg \
			x11/dbus-python \
			x11/gnome/grilo-plugins

LIB_DEPENDS=		x11/gnome/totem-pl-parser \
			devel/gobject-introspection \
			devel/libpeas \
			graphics/clutter/clutter-gst \
			graphics/clutter/clutter-gtk \
			productivity/zeitgeist>=0.9.14v0 \
			x11/gnome/grilo \
			x11/gnome/nautilus

# while the following are not "required" for totem to run, there's no
# point in using a media player that can't play most modern media files
RUN_DEPENDS +=		multimedia/gstreamer1/plugins-good \
			multimedia/gstreamer1/plugins-libav \
			multimedia/gstreamer1/plugins-bad #soundtouch

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_TOOLS=		gi vala yelp

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_ARGS=		--disable-static \
			--disable-browser-plugins \
			--disable-gmp-plugin \
			--disable-narrowspace-plugin \
			--disable-mully-plugin \
			--disable-cone-plugin \
			--disable-vegas-plugin

post-install:
	rm ${PREFIX}/lib/totem/plugins/*/*.la
	rm ${PREFIX}/lib/nautilus/extensions-3.0/*.la

.include <bsd.port.mk>
