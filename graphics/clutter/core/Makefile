# $OpenBSD: Makefile,v 1.2 2009/04/07 13:57:49 jasper Exp $

COMMENT=		OpenGL-based interactive canvas library

DISTNAME=		clutter-${MAJOR}.8
SHARED_LIBS +=  clutter-glx-0.8      0.0      # .808.0

MASTER_SITES=		${MASTER_SITES_CLUTTER:=clutter/${MAJOR}/}

MODULES=		devel/gettext

WANTLIB += GL X11 Xau Xcomposite Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xrender cairo expat fontconfig freetype gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gobject-2.0 gthread-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png z

LIB_DEPENDS+=		json-glib-1.0::devel/json-glib \
			gdk_pixbuf-2.0::x11/gtk+2

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-json=check \
			--enable-manual=no \
			--with-imagebackend=gdk-pixbuf \
			--with-flavour=glx

CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
