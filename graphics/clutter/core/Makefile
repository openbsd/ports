# $OpenBSD: Makefile,v 1.9 2011/04/07 07:44:46 jasper Exp $

COMMENT=		OpenGL-based interactive canvas library

DISTNAME=		clutter-${MAJOR}.6
REVISION=		3
SHARED_LIBS +=  clutter-glx-1.0      0.0      # .0.6

MASTER_SITES=		${MASTER_SITES_CLUTTER:=clutter/1.0/}

MODULES=		devel/gettext

WANTLIB += GL X11 Xau Xcomposite Xdamage Xdmcp Xext Xfixes
WANTLIB += Xrender expat fontconfig freetype gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 m pangoft2-1.0
WANTLIB += pcre pixman-1 png xcb-render xcb-render-util
WANTLIB += pthread-stubs xcb z Xxf86vm drm json-glib-1.0
WANTLIB += gdk_pixbuf-2.0 cairo pango-1.0 pangocairo-1.0

BUILD_DEPENDS=          devel/gobject-introspection
LIB_DEPENDS+=		devel/json-glib \
			devel/pango \
			graphics/gdk-pixbuf2

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-introspection \
			--with-json=check \
			--enable-manual=no \
			--with-imagebackend=gdk-pixbuf \
			--with-flavour=glx

CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
