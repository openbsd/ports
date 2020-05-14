# $OpenBSD: Makefile,v 1.6 2020/05/14 15:00:17 jasper Exp $

COMMENT =		library to help in developing UIs for mobile devices

V =			0.0.13
DISTNAME =		libhandy-v$V
PKGNAME =		libhandy-$V
CATEGORIES =		x11

SHARED_LIBS += handy-0.0                 2.0 # 0

MASTER_SITES =		https://source.puri.sm/Librem5/libhandy/-/archive/v$V/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MODULES =		devel/meson

WANTLIB += atk-1.0 cairo gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 intl m pango-1.0

BUILD_DEPENDS =		devel/gobject-introspection \
			lang/vala
RUN_DEPENDS =		devel/gobject-introspection
LIB_DEPENDS =		x11/gtk+3

CONFIGURE_ARGS +=	-Dglade_catalog=disabled \
			-Dexamples=false
CONFIGURE_ENV =		LDFLAGS=${LDFLAGS}

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mlld}
LDFLAGS =		-L${X11BASE}/lib
.endif

TEST_IS_INTERACTIVE =	X11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/meson.build

.include <bsd.port.mk>
