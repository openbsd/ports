# $OpenBSD: Makefile,v 1.10 2017/10/23 17:10:38 sthen Exp $

COMMENT=	document centric objects and utilities

GNOME_PROJECT=	goffice
GNOME_VERSION=	0.8.17
EXTRACT_SUFX=	.tar.bz2
PKGNAME=	goffice08-${GNOME_VERSION}
REVISION=	6

SHARED_LIBS +=	goffice-0.8          0.0      # .8.0

CATEGORIES=	devel

API_VERSION=	0.8
SUBST_VARS=	GNOME_VERSION API_VERSION

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 bz2 cairo
WANTLIB += dbus-1 dbus-glib-1 expat ffi fontconfig freetype
WANTLIB += gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gsf-1 gthread-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread xcb
WANTLIB += xcb-render xcb-shm xml2 z harfbuzz graphite2 lzma

MODULES=	devel/gettext \
		x11/gnome

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
