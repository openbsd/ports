# $OpenBSD: Makefile,v 1.16 2015/05/05 17:00:18 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	scim input method module for chewing

DISTNAME=	scim-chewing-0.3.4
REVISION=	3

CATEGORIES=	inputmethods chinese

HOMEPAGE=	http://www.scim-im.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+= GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB+= Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo chewing drm
WANTLIB+= expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB+= gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB+= gtk-x11-2.0 harfbuzz m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB+= pcre pixman-1 png pthread-stubs pthread scim-1.0
WANTLIB+= scim-gtkutils-1.0 scim-x11utils-1.0 stdc++ xcb xcb-render
WANTLIB+= xcb-shm z

MODULES=	devel/gettext \
		textproc/intltool

MASTER_SITES=	http://chewing.csie.net/download/scim/
EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	x11/gtk+2 \
		chinese/libchewing \
		inputmethods/scim

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
