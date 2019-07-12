# $OpenBSD: Makefile,v 1.13 2019/07/12 20:44:10 sthen Exp $

COMMENT=	document centric objects and utilities

GNOME_PROJECT=	goffice
GNOME_VERSION=	0.8.17
EXTRACT_SUFX=	.tar.bz2
PKGNAME=	goffice08-${GNOME_VERSION}
REVISION=	8

SHARED_LIBS +=	goffice-0.8          0.0      # .8.0

CATEGORIES=	devel

API_VERSION=	0.8
SUBST_VARS=	GNOME_VERSION API_VERSION

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 bz2 cairo dbus-1 dbus-glib-1 expat ffi
WANTLIB += fontconfig freetype fribidi gconf-2 gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gsf-1 gthread-2.0 gtk-x11-2.0 harfbuzz iconv intl
WANTLIB += lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread xcb xcb-render xcb-shm xml2 z

MODULES=	x11/gnome

LIB_DEPENDS=	devel/libgsf \
		devel/gconf2 \
		devel/pango \
		x11/gtk+2

MODGNOME_LDFLAGS=	-L${X11BASE}/lib

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-config-backend=gconf

post-install:
	rm ${PREFIX}/lib/goffice/${GNOME_VERSION}/plugins/*/*.{a,la}

.include <bsd.port.mk>
