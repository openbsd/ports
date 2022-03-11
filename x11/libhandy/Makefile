COMMENT =		building blocks for modern adaptive GNOME apps

GNOME_PROJECT =		libhandy
GNOME_VERSION =		1.5.91
CATEGORIES =		x11

API_V =			1
SHARED_LIBS += handy-1                   0.3 # 0

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MODULES =		devel/meson \
			x11/gnome

MODGNOME_TOOLS =	gobject-introspection vala

WANTLIB += atk-1.0 cairo gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 intl m pango-1.0 fribidi

LIB_DEPENDS =		x11/gtk+3

CONFIGURE_ARGS +=	-Dglade_catalog=disabled \
			-Dexamples=false

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mlld}
LDFLAGS =		-L${X11BASE}/lib
.endif

TEST_IS_INTERACTIVE =	X11

SUBST_VARS +=		API_V

.include <bsd.port.mk>
