# $OpenBSD: Makefile,v 1.22 2012/04/02 08:38:47 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	extra plugins for Anjuta IDE

GNOME_PROJECT=	anjuta-extras
GNOME_VERSION=	3.4.0
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	http://www.anjuta.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm anjuta-3 atk-1.0
WANTLIB += cairo cairo-gobject drm expat fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gdl-3 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs stdc++ util xcb xcb-render
WANTLIB += xcb-shm xml2 z ffi

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

MODGNOME_TOOLS=	yelp

# plugins/scintilla/{FilePath.cxx,aneditor-priv.h,aneditor.cxx}
# https://bugzilla.gnome.org/show_bug.cgi?id=631157
CFLAGS +=	-DMAX_PATH=PATH_MAX

LIB_DEPENDS=	x11/gnome/anjuta>=${GNOME_VERSION}

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_ARGS=	--disable-static

.include <bsd.port.mk>
