COMMENT =	Display server protocol

DISTNAME =	wayland-${V}
V =		1.22.0
REVISION =	0

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

SITES =			https://gitlab.freedesktop.org/wayland/wayland/-/releases/${V}/downloads/
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/meson \
			lang/clang

MODCLANG_COMPILER_LINKS=No
MODCLANG_BUILDDEP=	No

BUILD_DEPENDS =		textproc/libxslt \
			devel/ninja

LIB_DEPENDS =		devel/libffi \
			textproc/libxml \
			devel/epoll-shim

MODMESON_CONFIGURE_ARGS +=	-Ddocumentation=false \
				-Dicon_directory="~/.icons:/usr/local/lib/X11/icons:/usr/local/share/icons:/usr/local/share/pixmaps:${X11BASE}/share/icons:${X11BASE}/share/pixmaps"

TEST_DEPENDS =		devel/llvm/${MODCLANG_VERSION},-main

DEBUG_PACKAGES = 	${BUILD_PACKAGES}

.include <bsd.port.mk>
