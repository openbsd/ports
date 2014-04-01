# $OpenBSD: Makefile,v 1.6 2014/04/01 13:21:44 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	document centric objects and utilities

GNOME_PROJECT=	goffice
GNOME_VERSION=	0.8.17
EXTRACT_SUFX=	.tar.bz2
PKGNAME=	goffice08-${GNOME_VERSION}
REVISION=	3

SHARED_LIBS +=	goffice-0.8          0.0      # .8.0

CATEGORIES=	devel

API_VERSION=	0.8
SUBST_VARS=	GNOME_VERSION API_VERSION

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 bz2 cairo
WANTLIB += dbus-1 dbus-glib-1 drm expat ffi fontconfig freetype
WANTLIB += gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gsf-1 gthread-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs stdc++ xcb
WANTLIB += xcb-render xcb-shm xml2 z harfbuzz

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
