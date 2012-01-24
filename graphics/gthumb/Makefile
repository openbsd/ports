# $OpenBSD: Makefile,v 1.54 2012/01/24 08:42:48 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	image viewer and browser for GNOME

GNOME_PROJECT=	gthumb
GNOME_VERSION=	2.14.2

CATEGORIES=	graphics

HOMEPAGE=	http://live.gnome.org/gthumb

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo clutter-glx-1.0 clutter-gtk-0.10 dbus-1
WANTLIB += dbus-glib-1 drm exiv2 expat ffi fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-keyring gobject-2.0 gstinterfaces-0.10 gstreamer-0.10
WANTLIB += gthread-2.0 gtk-x11-2.0 jpeg m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += soup-2.4 soup-gnome-2.4 stdc++ tiff xcb xcb-render
WANTLIB += xcb-shm z

MODULES=	devel/gconf2 \
		devel/gettext \
		x11/gnome

# web albums
BUILD_DEPENDS +=	devel/bison

LIB_DEPENDS=	databases/sqlite3 \
		devel/libsoup,-gnome \
		devel/libunique \
		graphics/clutter/clutter-gtk \
		graphics/exiv2>=0.22 \
		multimedia/gstreamer-0.10/plugins-base \
		devel/json-glib
RUN_DEPENDS=	misc/shared-mime-info

LIBTOOL_FLAGS=		--tag=disable-static

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGCONF2_SCHEMAS_DIR=	gthumb

CONFIGURE_STYLE=	gnu
MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_LDFLAGS=	-L${X11BASE}/lib -Wl,-rpath,${TRUEPREFIX}/lib/gthumb/extensions
CONFIGURE_ARGS=		--disable-static \
			--disable-libopenraw \
			--disable-libbrasero \
			--enable-libsoup \
			--enable-gnome-keyring \
			--enable-exiv2

post-install:
	rm ${PREFIX}/lib/gthumb/extensions/*.la

.include <bsd.port.mk>
