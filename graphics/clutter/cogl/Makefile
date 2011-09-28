# $OpenBSD: Makefile,v 1.1.1.1 2011/09/28 12:29:39 robert Exp $

COMMENT=		modern 3D graphics API

MAJOR=			1.8
DISTNAME=		cogl-${MAJOR}.0

EXTRACT_SUFX=		.tar.xz

SHARED_LIBS+=		cogl-pango	0.0 # 0.0
SHARED_LIBS+=		cogl		5.0 # 5.0

MASTER_SITES=		${HOMEPAGE}/sources/cogl/${MAJOR}/

MODULES=		x11/gnome

WANTLIB += GL X11 Xau Xcomposite Xdamage Xdmcp Xext Xfixes Xrender
WANTLIB += Xxf86vm cairo drm expat ffi fontconfig freetype gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs xcb xcb-render xcb-shm
WANTLIB += z

MODGNOME_TOOLS=		goi

LIB_DEPENDS+=		devel/pango \
			graphics/cairo \
			graphics/gdk-pixbuf2

CONFIGURE_ARGS+=	--with-gl-libname=libGL.so

.include <bsd.port.mk>
