# $OpenBSD: Makefile,v 1.13 2012/01/31 09:24:23 ajacoutot Exp $

COMMENT=		OpenGL-based interactive canvas library

DISTNAME=		clutter-${MAJOR}.6
REVISION=		7
SHARED_LIBS +=  clutter-glx-1.0      0.0      # .0.6

MASTER_SITES=		${MASTER_SITES_CLUTTER:=clutter/1.0/}

MODULES=		devel/gettext

WANTLIB += GL X11 Xau Xcomposite Xdamage Xdmcp Xext Xfixes
WANTLIB += Xrender expat fontconfig freetype gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 m pangoft2-1.0
WANTLIB += pcre pixman-1 png xcb-render ffi stdc++ xcb-shm
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

# XXX fix building with glib2 >= 2.29 (G_CONST_RETURN is deprecated)
CFLAGS +=      "-DG_CONST_RETURN=const"

.include <bsd.port.mk>
