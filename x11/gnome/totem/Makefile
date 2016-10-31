# $OpenBSD: Makefile,v 1.145 2016/10/31 12:48:26 ajacoutot Exp $

COMMENT=		official media player for GNOME

GNOME_PROJECT=		totem
GNOME_VERSION=		3.22.0

SHARED_LIBS +=  totem                0.0      # unknown

CATEGORIES=		multimedia

# GPLv2 with exception clause - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender archive atk-1.0 atk-bridge-2.0
WANTLIB += atspi bz2 c cairo cairo-gobject clutter-1.0 clutter-gst-3.0
WANTLIB += clutter-gtk-1.0 cogl cogl-pango cogl-path crypto dbus-1
WANTLIB += drm epoxy expat ffi fontconfig freetype gbm gcrypt
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0 glib-2.0
WANTLIB += gmime-2.6 gmodule-2.0 gnome-autoar-0 gnome-desktop-3
WANTLIB += gobject-2.0 gpg-error graphite2 grilo-0.3 grlpls-0.3
WANTLIB += gstaudio-1.0 gstbase-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += iconv intl json-glib-1.0 lz4 lzma lzo2 m nautilus-extension
WANTLIB += orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += peas-1.0 peas-gtk-1.0 pixman-1 png pthread pthread-stubs
WANTLIB += soup-2.4 sqlite3 totem-plparser xcb xcb-dri2 xcb-render
WANTLIB += xcb-shm xcb-xfixes xml2 z

MODULES=		devel/dconf \
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
