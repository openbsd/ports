# $OpenBSD: Makefile,v 1.15 2013/01/04 19:21:52 jasper Exp $

COMMENT=		modern 3D graphics API

GNOME_PROJECT=		cogl
GNOME_VERSION=		1.12.2

SHARED_LIBS+=		cogl-pango	0.1 # 0.0
SHARED_LIBS+=		cogl		0.1 # 11.2

WANTLIB += GL X11 Xau Xcomposite Xdamage Xdmcp Xext Xfixes Xrender
WANTLIB += Xxf86vm cairo drm expat ffi fontconfig freetype gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread-stubs stdc++ xcb xcb-render xcb-shm z
WANTLIB += harfbuzz icudata icule icuuc pthread

MODGNOME_TOOLS=		goi

LIB_DEPENDS=		devel/pango \
			graphics/gdk-pixbuf2

CONFIGURE_ARGS+=	--with-gl-libname=libGL.so

REGRESS_DEPENDS=	shells/bash
REGRESS_IS_INTERACTIVE=	x11

pre-configure:
	perl -pi -e 's,/bin/bash,${LOCALBASE}/bin/bash,' \
		${WRKSRC}/tests/conform/run-tests.sh

do-regress:
	cd ${WRKSRC}/tests && ${MAKE_PROGRAM} test

.include <bsd.port.mk>
