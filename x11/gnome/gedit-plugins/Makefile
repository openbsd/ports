# $OpenBSD: Makefile,v 1.50 2012/04/23 05:37:15 ajacoutot Exp $

COMMENT=		plugins for Gedit

GNOME_PROJECT=		gedit-plugins
GNOME_VERSION=		3.4.0

CATEGORIES=		editors

HOMEPAGE=		http://live.gnome.org/Gedit/Plugins

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo cairo-gobject
WANTLIB += drm expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 gtksourceview-3.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre peas-1.0 peas-gtk-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb xcb-render xcb-shm xml2 z stdc++

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/gsettings-desktop-schemas
LIB_DEPENDS=		devel/libpeas>=1.1.4p1 \
			x11/gtksourceview3
RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/vte3 \
			x11/dbus-python \
			x11/gnome/gedit>=3.4.0 \
			x11/gnome/gucharmap

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_ARGS+=	--disable-static \
			--with-plugins=all

# needed for the Vte plugin (-lvte2_90)
MODGNOME_CPPFLAGS=	-I${X11BASE}/include -pthread
MODGNOME_LDFLAGS=	-L${X11BASE}/lib -pthread

.include <bsd.port.mk>
