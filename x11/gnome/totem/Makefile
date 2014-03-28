# $OpenBSD: Makefile,v 1.117 2014/03/28 09:30:34 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		official media player for GNOME

GNOME_PROJECT=		totem
GNOME_VERSION=		3.12.0

SHARED_LIBS +=  totem                0.0      # unknown

CATEGORIES=		multimedia

# GPLv2 with exception clause - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender archive atk-1.0 atk-bridge-2.0
WANTLIB += atspi bz2 c cairo cairo-gobject clutter-1.0 clutter-gst-2.0
WANTLIB += clutter-gtk-1.0 cogl cogl-pango dbus-1 cogl-path grlpls-0.2
WANTLIB += expat ffi fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 glib-2.0 gmime-2.6 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error graphite2 grilo-0.2 gstaudio-1.0
WANTLIB += gstbase-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz json-glib-1.0
WANTLIB += lzma m nautilus-extension orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre peas-1.0 peas-gtk-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs soup-2.4 sqlite3 stdc++ totem-plparser
WANTLIB += totem-plparser-mini xcb xcb-render xcb-shm xml2 z zeitgeist-2.0

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=	 	devel/gsettings-desktop-schemas \
			devel/py-gobject3 \
			multimedia/gstreamer1/plugins-good

# needed for make check
BUILD_DEPENDS +=	devel/pylint

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/py-gobject3 \
			x11/dbus-python

# calls grl_registry_load...plugin
RUN_DEPENDS +=		x11/gnome/grilo-plugins

LIB_DEPENDS=		x11/gnome/totem-pl-parser \
			devel/gobject-introspection \
			devel/libpeas \
			graphics/clutter/clutter-gst \
			graphics/clutter/clutter-gtk \
			productivity/zeitgeist \
			x11/gnome/grilo \
			x11/gnome/nautilus

# while the following are not "required" for totem to run, there's no
# point in using a media player that can't play most modern media files
RUN_DEPENDS +=		multimedia/gstreamer1/plugins-good \
			multimedia/gstreamer1/plugins-libav

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_TOOLS=		gi vala yelp

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_ARGS=		--disable-static

pre-configure:
# XXX cc1: error: unrecognized command line option "-Wno-unused-but-set-variable"
	find ${WRKSRC} -name Makefile.in | xargs -r \
		perl -pi -e 's,-Wno-unused-but-set-variable,,' \
		${WRKSRC}/src/Makefile.in

post-install:
	rm ${PREFIX}/lib/totem/plugins/*/*.la
	rm ${PREFIX}/lib/nautilus/extensions-3.0/*.la
	rm ${PREFIX}/lib/mozilla/plugins/*.la

.include <bsd.port.mk>
