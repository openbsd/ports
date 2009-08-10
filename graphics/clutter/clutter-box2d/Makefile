# $OpenBSD: Makefile,v 1.2 2009/08/10 06:31:44 kili Exp $

COMMENT=		clutter Box2D integration library

DISTNAME=		clutter-box2d-${MAJOR}.2
PKGNAME=		${DISTNAME}p0
SHARED_LIBS +=  clutter-box2d-0.8    0.0      # .802.0

MASTER_SITES=		${MASTER_SITES_CLUTTER:=clutter-box2d/${MAJOR}/}

MODULES=		devel/gettext

WANTLIB += GL X11 Xau Xcomposite Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xrender cairo expat fontconfig freetype gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += json-glib-1.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs xcb z

LIB_DEPENDS=		clutter-glx-0.8::graphics/clutter/core

CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
