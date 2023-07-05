COMMENT =	Display server protocol

DISTNAME =	wayland-${V}
V =		1.22.0

CATEGORIES =	wayland

HOMEPAGE =	https://wayland.freedesktop.org/

SHARED_LIBS +=  wayland-client          0.1 # 0.21.0
SHARED_LIBS +=  wayland-cursor          0.0 # 0.21.0
SHARED_LIBS +=  wayland-egl             0.0 # 1.0
SHARED_LIBS +=  wayland-server          0.2 # 0.21.0

WANTLIB += c epoll-shim expat ffi xml2

# MIT
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MASTER_SITES =		https://gitlab.freedesktop.org/wayland/wayland/-/releases/${V}/downloads/
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/meson

BUILD_DEPENDS =		textproc/libxslt \
			devel/ninja

LIB_DEPENDS =		devel/libffi \
			textproc/libxml \
			devel/epoll-shim

MODMESON_CONFIGURE_ARGS +=	-Ddocumentation=false

TEST_DEPENDS =		devel/llvm,-main

.include <bsd.port.mk>
