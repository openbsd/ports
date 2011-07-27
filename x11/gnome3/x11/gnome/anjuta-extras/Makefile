# $OpenBSD: Makefile,v 1.3 2011/07/27 10:39:04 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	extra plugins for Anjuta IDE

GNOME_PROJECT=	anjuta-extras
GNOME_VERSION=	3.1.4

CATEGORIES=	devel

HOMEPAGE=	http://www.anjuta.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=	.tar.xz

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm anjuta-3 atk-1.0
WANTLIB += cairo cairo-gobject drm expat fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gdl-3 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs stdc++ util xcb xcb-render
WANTLIB += xcb-shm xml2 z

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

# plugins/scintilla/{FilePath.cxx,aneditor-priv.h,aneditor.cxx}
# https://bugzilla.gnome.org/show_bug.cgi?id=631157
CFLAGS +=	-DMAX_PATH=PATH_MAX

LIB_DEPENDS=	x11/gnome/anjuta>=3.1.4

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
