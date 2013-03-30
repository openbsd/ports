# $OpenBSD: Makefile,v 1.55 2013/03/30 13:04:46 jasper Exp $

COMMENT=		plugins for Gedit

GNOME_PROJECT=		gedit-plugins
GNOME_VERSION=		3.8.0

CATEGORIES=		editors

HOMEPAGE=		http://live.gnome.org/Gedit/Plugins

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += gtksourceview-3.0 harfbuzz icudata icule icuuc m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre peas-1.0 peas-gtk-1.0
WANTLIB += pixman-1 png pthread pthread-stubs xcb xcb-render xcb-shm
WANTLIB += xml2 z

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/gsettings-desktop-schemas \
			textproc/gsed
LIB_DEPENDS=		devel/libpeas>=1.8.0 \
			x11/gtksourceview3
RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/vte3 \
			x11/gnome/gedit>=3.8.0 \
			x11/gnome/gucharmap

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_ARGS+=	--disable-static \
			--with-plugins=all

# XXX: Re-enable for py-gobject with python 3
CONFIGURE_ARGS+=	--disable-python

# needed for the Vte plugin (-lvte2_90)
MODGNOME_CPPFLAGS=	-I${X11BASE}/include -pthread
MODGNOME_LDFLAGS=	-L${X11BASE}/lib -pthread

post-install:
	rm ${PREFIX}/lib/gedit/plugins/*.la

.include <bsd.port.mk>
