# $OpenBSD: Makefile,v 1.65 2013/03/11 11:10:53 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	image viewer and browser for GNOME

GNOME_PROJECT=	gthumb
GNOME_VERSION=	3.0.2
REVISION=	1

CATEGORIES=	graphics

HOMEPAGE=	http://live.gnome.org/gthumb

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject drm exiv2 expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-keyring
WANTLIB += gobject-2.0 gstinterfaces-0.10 gstreamer-0.10 gthread-2.0
WANTLIB += gtk-3 jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs rsvg-2 soup-2.4
WANTLIB += soup-gnome-2.4 stdc++ tiff xcb xcb-render xcb-shm z
WANTLIB += clutter-1.0 clutter-gtk-1.0 cogl

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

# web albums
BUILD_DEPENDS +=	devel/bison

LIB_DEPENDS=	devel/libsoup,-gnome \
		graphics/clutter/clutter-gtk \
		graphics/exiv2>=0.22 \
		multimedia/gstreamer-0.10/plugins-base \
		x11/gnome/librsvg
RUN_DEPENDS=	misc/shared-mime-info

LIBTOOL_FLAGS=		--tag=disable-static

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

CONFIGURE_STYLE=	gnu
MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_LDFLAGS=	-L${X11BASE}/lib -Wl,-rpath,${TRUEPREFIX}/lib/gthumb/extensions
CONFIGURE_ARGS=		--disable-static \
			--disable-libopenraw \
			--disable-libbrasero

post-install:
	rm ${PREFIX}/lib/gthumb/extensions/*.la

.include <bsd.port.mk>
