# $OpenBSD: Makefile,v 1.4 2009/10/10 23:19:25 landry Exp $

COMMENT=		OpenGL-based interactive canvas library

DISTNAME=		clutter-1.0.6
SHARED_LIBS +=  clutter-glx-1.0      0.0      # .0.6

MASTER_SITES=		${MASTER_SITES_CLUTTER:=clutter/1.0/}

MODULES=		devel/gettext

WANTLIB += GL X11 Xau Xcomposite Xdamage Xdmcp Xext Xfixes
WANTLIB += Xrender cairo expat fontconfig freetype gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gobject-2.0 gthread-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += pthread-stubs xcb z Xxf86vm drm

LIB_DEPENDS+=		json-glib-1.0::devel/json-glib \
			gdk_pixbuf-2.0::x11/gtk+2

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-introspection=no \
			--with-json=check \
			--enable-manual=no \
			--with-imagebackend=gdk-pixbuf \
			--with-flavour=glx

CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
