# $OpenBSD: Makefile,v 1.137 2015/09/01 06:43:59 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		official media player for GNOME

GNOME_PROJECT=		totem
GNOME_VERSION=		3.16.3

SHARED_LIBS +=  totem                0.0      # unknown

CATEGORIES=		multimedia

# GPLv2 with exception clause - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender archive atk-1.0
WANTLIB += atk-bridge-2.0 atspi bz2 c cairo cairo-gobject clutter-1.0
WANTLIB += clutter-gst-3.0 clutter-gtk-1.0 cogl cogl-pango cogl-path
WANTLIB += dbus-1 drm epoxy expat ffi fontconfig freetype gbm gcrypt
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0 glapi glib-2.0
WANTLIB += gmime-2.6 gmodule-2.0 gnome-desktop-3 gobject-2.0 gpg-error
WANTLIB += graphite2 grilo-0.2 grlpls-0.2 gstaudio-1.0 gstbase-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += gthread-2.0 gtk-3 harfbuzz json-glib-1.0 lzma lzo2 m
WANTLIB += nautilus-extension orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre peas-1.0 peas-gtk-1.0 pixman-1 png pthread
WANTLIB += pthread-stubs soup-2.4 sqlite3 totem-plparser xcb xcb-dri2
WANTLIB += xcb-render xcb-shape xcb-shm xcb-xfixes xml2 z zeitgeist-2.0

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=	 	devel/gsettings-desktop-schemas \
			devel/py-gobject3 \
			multimedia/gstreamer1/plugins-good>=1.4.3

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

MODGNOME_TOOLS += desktop-file-utils gobject-introspection gtk-update-icon-cache
MODGNOME_TOOLS += vala yelp

pre-configure:
# XXX cc1: error: unrecognized command line option "-Wno-unused-but-set-variable"
	find ${WRKSRC} -name Makefile.in | xargs -r \
		sed -i 's,-Wno-unused-but-set-variable,,' \
		${WRKSRC}/src/Makefile.in

post-install:
	rm ${PREFIX}/lib/totem/plugins/*/*.{a,la}
	rm ${PREFIX}/lib/nautilus/extensions-3.0/*.{a,la}

.include <bsd.port.mk>
