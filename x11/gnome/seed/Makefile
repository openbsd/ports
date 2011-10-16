# $OpenBSD: Makefile,v 1.14 2011/10/16 19:23:35 ajacoutot Exp $

COMMENT=		GObject JavaScriptCore bridge

GNOME_PROJECT=		seed
GNOME_VERSION=		3.2.0
REVISION=		1
SHARED_LIBS +=  seed-gtk3                 0.0 # 0.0

CATEGORIES=		devel www

# Seed: LGPLv3
# Examples: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=		http://live.gnome.org/Seed

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm atk-1.0
WANTLIB += c cairo cairo-gobject dbus-1 dbus-glib-1 drm enchant
WANTLIB += expat ffi fontconfig freetype gailutil-3 gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0 gmp gobject-2.0
WANTLIB += gstapp-0.10 gstbase-0.10 gstinterfaces-0.10 gstpbutils-0.10
WANTLIB += gstreamer-0.10 gstvideo-0.10 gthread-2.0 gtk-3 icudata
WANTLIB += icui18n icuuc jpeg m mpfr pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += readline soup-2.4 sqlite3 stdc++ termcap util webkitgtk-3.0
WANTLIB += xcb xcb-render xcb-shm xml2 xslt z javascriptcoregtk-3.0

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		x11/gnome/js-common
LIB_DEPENDS=		devel/gobject-introspection>=1.30.0 \
			devel/mpfr>=3.0.1 \
			www/webkit,gtk3>=1.6.1v0

CONFIGURE_ARGS+=	--enable-readline-module \
			--enable-multiprocessing-module \
			--enable-sqlite-module \
			--enable-example-module \
			--enable-dbus-module \
			--enable-os-module \
			--enable-ffi-module \
			--enable-libxml-module \
			--enable-gtkbuilder-module \
			--enable-cairo-module \
			--enable-gettext-module \
			--enable-mpfr-module

REGRESS_IS_INTERACTIVE= x11
REGRESS_DEPENDS=	${BASE_PKGPATH}

.include <bsd.port.mk>
