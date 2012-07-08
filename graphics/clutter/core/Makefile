# $OpenBSD: Makefile,v 1.15 2012/07/08 08:01:55 ajacoutot Exp $

COMMENT=		OpenGL-based interactive canvas library

GNOME_PROJECT=		clutter
GNOME_VERSION=		${MAJOR}.8
REVISION=		0

SHARED_LIBS +=  clutter-1.0          0.0   # 1000.8

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo cairo-gobject
WANTLIB += cogl cogl-pango drm expat ffi fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs stdc++
WANTLIB += xcb xcb-render xcb-shm z

MODGNOME_TOOLS=		goi

LIB_DEPENDS=		devel/json-glib \
			graphics/clutter/cogl>=${MAJOR} \
			x11/gtk+3

MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

CONFIGURE_ARGS=		--enable-x11-backend

pre-configure:
	${SUBST_CMD} ${WRKSRC}/clutter/Makefile.in

.include <bsd.port.mk>
