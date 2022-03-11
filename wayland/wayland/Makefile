COMMENT =	Display server protocol

DISTNAME =	wayland-1.19.0
REVISION =	0

CATEGORIES =	wayland

HOMEPAGE =	https://wayland.freedesktop.org/

SHARED_LIBS +=  wayland-client          0.0 # 3.0
SHARED_LIBS +=  wayland-cursor          0.0 # 0.0
SHARED_LIBS +=  wayland-egl             0.0 # 1.0
SHARED_LIBS +=  wayland-server          0.0 # 1.0

WANTLIB += c epoll-shim expat ffi xml2

# MIT
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://wayland.freedesktop.org/releases/
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/meson

BUILD_DEPENDS =		textproc/libxslt \
			devel/cmake \
			devel/ninja

LIB_DEPENDS =		devel/libffi \
			textproc/libxml \
			devel/epoll-shim

CFLAGS+=		"-I${LOCALBASE}/include/libepoll-shim"

MODMESON_CONFIGURE_ARGS +=	-Ddocumentation=false

.include <bsd.port.mk>
