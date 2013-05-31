# $OpenBSD: Makefile,v 1.19 2013/05/31 15:34:46 ajacoutot Exp $

COMMENT=		modern 3D graphics API

GNOME_PROJECT=		cogl
GNOME_VERSION=		${MAJOR}.0
REVISION=		0

SHARED_LIBS +=  cogl                 1.0      # 13.1
SHARED_LIBS +=  cogl-pango           1.0      # 13.1

WANTLIB += X11 Xcomposite Xdamage Xext Xfixes Xrandr Xrender cairo
WANTLIB += expat ffi fontconfig freetype gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += harfbuzz m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

MODGNOME_TOOLS=		gi

LIB_DEPENDS=		devel/pango \
			graphics/gdk-pixbuf2

CONFIGURE_ARGS=		--with-gl-libname=libGL.so

TEST_DEPENDS=		shells/bash
TEST_IS_INTERACTIVE=	x11

pre-configure:
	perl -pi -e 's,/bin/bash,${LOCALBASE}/bin/bash,' \
		${WRKSRC}/tests/conform/run-tests.sh

do-test:
	cd ${WRKSRC}/tests && ${MAKE_PROGRAM} test

.include <bsd.port.mk>
