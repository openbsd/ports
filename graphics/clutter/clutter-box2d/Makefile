# $OpenBSD: Makefile,v 1.6 2010/10/11 08:14:42 jasper Exp $

COMMENT=		clutter Box2D integration library

DISTNAME=		clutter-box2d-${API_VERSION}.0
REVISION=		2
SHARED_LIBS +=  clutter-box2d-0.10    0.0      # .1000.0

MASTER_SITES=		${MASTER_SITES_CLUTTER:=clutter-box2d/${MAJOR}/}

MODULES=		devel/gettext

WANTLIB += GL X11 Xau Xcomposite Xdamage Xdmcp Xext Xfixes Xxf86vm drm
WANTLIB += Xrender cairo expat fontconfig freetype gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += json-glib-1.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs xcb z clutter-glx-1.0
WANTLIB += stdc++ xcb-render xcb-render-util

LIB_DEPENDS=		::graphics/clutter/core

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-introspection=no

.include <bsd.port.mk>
