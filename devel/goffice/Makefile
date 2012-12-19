# $OpenBSD: Makefile,v 1.45 2012/12/19 10:42:05 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	document centric objects and utilities

# XXX on GNOME_VERSION version change, update GOFFICE_API_VERSION and
# GOFFICE_VERSION in math/gnumeric then bump REVISION.
GNOME_PROJECT=	goffice
GNOME_VERSION=	0.10.0

SHARED_LIBS +=  goffice-0.10              0.0 # 10.0

CATEGORIES=	devel

API_VERSION=	0.10
SUBST_VARS=	GNOME_VERSION API_VERSION

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atspi bz2 cairo cairo-gobject croco-0.6
WANTLIB += dbus-1 drm expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gs gsf-1 gthread-2.0
WANTLIB += gtk-3 harfbuzz icudata icule icuuc jpeg lasem-0.4 m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs rsvg-2 spectre stdc++ xcb
WANTLIB += xcb-render xcb-shm xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/libgsf \
			graphics/lasem \
			print/libspectre \
			x11/gnome/librsvg \
			x11/gtk+3

# XXX undefined reference to `go_cspline_get_type'
#MODGNOME_TOOLS=		goi
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-static

post-install:
	rm ${PREFIX}/lib/goffice/${GNOME_VERSION}/plugins/*/*.la

.include <bsd.port.mk>
