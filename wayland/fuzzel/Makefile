COMMENT =		app launcher and fuzzy finder for wayland

V =			1.14.1
DISTNAME=		fuzzel-${V}
REVISION=		1

SITES =			https://codeberg.org/dnkl/fuzzel/releases/download/${V}/
DISTFILES =		fuzzel-${V}${EXTRACT_SUFX}

CATEGORIES =		wayland

MAINTAINER =		Volker Schlecht <volker@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc

WANTLIB += c cairo epoll-shim fcft fontconfig m pixman-1 png pthread
WANTLIB += stdthreads wayland-client wayland-cursor xkbcommon

MODULES =		devel/meson

BUILD_DEPENDS =		devel/tllist \
			textproc/scdoc \
			wayland/libinput-openbsd \
			wayland/wayland-protocols \
			x11/gnome/librsvg

LIB_DEPENDS =		devel/libstdthreads \
			devel/epoll-shim \
			graphics/cairo \
			graphics/fcft \
			graphics/png \
			wayland/wayland \
			x11/xkbcommon

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fuzzel
	${INSTALL_DATA} ${WRKSRC}/fuzzel.ini ${PREFIX}/share/examples/fuzzel

.include <bsd.port.mk>

