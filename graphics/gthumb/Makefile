# $OpenBSD: Makefile,v 1.66 2013/03/29 19:29:22 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	image viewer and browser for GNOME

GNOME_PROJECT=	gthumb
GNOME_VERSION=	3.2.0
API_V=		${GNOME_VERSION:R}

CATEGORIES=	graphics

HOMEPAGE=	http://live.gnome.org/gthumb

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject clutter-1.0 clutter-gtk-1.0 cogl
WANTLIB += dbus-1 exiv2 expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz icudata icule icuuc jpeg
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs rsvg-2 stdc++ tiff xcb xcb-render
WANTLIB += xcb-shm z gstreamer-1.0

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

# web albums
BUILD_DEPENDS +=	devel/bison

LIB_DEPENDS=	graphics/clutter/clutter-gtk  \
		graphics/exiv2>=0.22 \
		x11/gnome/librsvg \
		multimedia/gstreamer1/plugins-base
		
RUN_DEPENDS=	misc/shared-mime-info

LIBTOOL_FLAGS=		--tag=disable-static

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

CONFIGURE_STYLE=	gnu
MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_LDFLAGS=	-L${X11BASE}/lib -Wl,-rpath,${TRUEPREFIX}/lib/gthumb/extensions
CONFIGURE_ARGS=		--disable-static \
			--disable-libbrasero

SUBST_VARS=		API_V

post-install:
	rm ${PREFIX}/lib/gthumb/extensions/*.la

.include <bsd.port.mk>
