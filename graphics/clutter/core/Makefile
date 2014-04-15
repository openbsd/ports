# $OpenBSD: Makefile,v 1.34 2014/04/15 07:35:36 jasper Exp $

COMMENT=		OpenGL-based interactive canvas library

GNOME_PROJECT=		clutter
GNOME_VERSION=		${MAJOR}.2

SHARED_LIBS +=  clutter-1.0          4.0   # 1800.0

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo cairo-gobject cogl cogl-pango
WANTLIB += expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 harfbuzz json-glib-1.0 cogl-path
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs xcb xcb-render xcb-shm z

MODGNOME_TOOLS +=	gobject-introspection

LIB_DEPENDS=		devel/json-glib \
			graphics/clutter/cogl>=${MAJOR} \
			x11/gtk+3

MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

CONFIGURE_ARGS=		--enable-x11-backend

TEST_IS_INTERACTIVE=	X11

pre-configure:
	${SUBST_CMD} ${WRKSRC}/clutter/Makefile.in

.include <bsd.port.mk>
