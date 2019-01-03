# $OpenBSD: Makefile,v 1.160 2019/01/03 15:11:51 ajacoutot Exp $

COMMENT=		official media player for GNOME

GNOME_PROJECT=		totem
GNOME_VERSION=		3.30.0

SHARED_LIBS +=  totem                0.0      # unknown

CATEGORIES=		multimedia

# GPLv2 with exception clause - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 atk-1.0 c cairo cairo-gobject clutter-1.0 clutter-gst-3.0
WANTLIB += clutter-gtk-1.0 cogl gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += glib-2.0 gnome-desktop-3 gobject-2.0 grilo-0.3 grlpls-0.3
WANTLIB += gstaudio-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gtk-3 intl m nautilus-extension pango-1.0
WANTLIB += pangocairo-1.0 peas-1.0 peas-gtk-1.0 totem-plparser
WANTLIB += xml2

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS=	 	devel/gsettings-desktop-schemas \
			devel/py-gobject3${MODPY_FLAVOR} \
			multimedia/gstreamer1/plugins-good

# needed for make check
BUILD_DEPENDS +=	devel/pylint${MODPY_FLAVOR}

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/py-gobject3${MODPY_FLAVOR} \
			x11/dbus-python${MODPY_FLAVOR}

# calls grl_registry_load...plugin
RUN_DEPENDS +=		x11/gnome/grilo-plugins

LIB_DEPENDS=		x11/gnome/totem-pl-parser \
			devel/gobject-introspection \
			devel/libpeas \
			graphics/clutter/clutter-gst \
			graphics/clutter/clutter-gtk \
			x11/gnome/desktop \
			x11/gnome/grilo \
			x11/gnome/nautilus

# while the following are not "required" for totem to run, there's no
# point in using a media player that can't play most modern media files
RUN_DEPENDS +=		multimedia/gstreamer1/plugins-good \
			multimedia/gstreamer1/plugins-libav

MODGNOME_TOOLS += desktop-file-utils gobject-introspection gtk-update-icon-cache
MODGNOME_TOOLS += yelp

# XXX
# https://bugzilla.gnome.org/show_bug.cgi?id=786248
# https://github.com/mesonbuild/meson/issues/1923
# MODGNOME_TOOLS += vala
CONFIGURE_ARGS +=	-Denable-vala=no

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}

.include <bsd.port.mk>
