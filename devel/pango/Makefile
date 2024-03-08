PORTROACH=		skipv:1.90.0

COMMENT=		library for layout and rendering of text

DIST_TUPLE =		gnome GNOME pango 1.52.1 .

SHARED_LIBS += pango-1.0                 3801.4 # 0.5200.1
SHARED_LIBS += pangoft2-1.0              3801.3 # 0.5200.1
SHARED_LIBS += pangoxft-1.0              3801.3 # 0.5200.1
SHARED_LIBS += pangocairo-1.0            3801.3 # 0.5200.1

CATEGORIES=		devel x11

HOMEPAGE=		https://pango.gnome.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xft Xrender c cairo fontconfig freetype fribidi
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 harfbuzz m

COMPILER=		base-clang ports-gcc
MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection

BUILD_DEPENDS=		devel/help2man

LIB_DEPENDS=		devel/glib2 \
			devel/fribidi \
			devel/harfbuzz

TEST_DEPENDS=		fonts/cantarell-fonts

CONFIGURE_ARGS=		-Dlibthai=disabled

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
