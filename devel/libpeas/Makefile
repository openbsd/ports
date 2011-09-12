# $OpenBSD: Makefile,v 1.7 2011/09/12 12:07:25 jasper Exp $

COMMENT=	gobject-based plugins engine

GNOME_PROJECT=	libpeas
GNOME_VERSION=	1.0.0

REVISION=	4

CATEGORIES=	devel

SHARED_LIBS +=  peas-1.0                  0.0 # 0.0
SHARED_LIBS +=  peas-gtk-1.0              0.0 # 0.0

HOMEPAGE=	http://live.gnome.org/Libpeas

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm atk-1.0
WANTLIB += c cairo cairo-gobject drm enchant expat ffi fontconfig
WANTLIB += freetype gailutil-3 gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gstapp-0.10 gstbase-0.10
WANTLIB += gstinterfaces-0.10 gstpbutils-0.10 gstreamer-0.10 gstvideo-0.10
WANTLIB += gthread-2.0 gtk-3 icudata icui18n icuuc jpeg m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs seed-gtk3 soup-2.4 sqlite3
WANTLIB += stdc++ util webkitgtk-3.0 xcb xcb-render xcb-shm xml2
WANTLIB += xslt z ${MODPY_WANTLIB}

MODULES=	devel/gettext \
		x11/gnome \
		lang/python

RUN_DEPENDS=	devel/py-gobject

BUILD_DEPENDS=	lang/vala \
		devel/py-gobject

LIB_DEPENDS=	devel/gobject-introspection \
		x11/gnome/seed

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--disable-gtk-doc \
		--enable-seed \
		--enable-python \
		--enable-vala \

# XXX
# glade looks for libpeas-gtk-1.0.so instead of libpeas-gtk-1.0.so.XX
# "library" should be s/libpeas-gtk-1.0/peas-gtk-1.0/ in the catalog
#BUILD_DEPENDS+=devel/glade
CONFIGURE_ARGS+=--disable-glade-catalog

.include <bsd.port.mk>
