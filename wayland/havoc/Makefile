COMMENT =	minimal terminal emulator for wayland

GH_ACCOUNT =	ii8
GH_PROJECT =	havoc
GH_TAGNAME =	0.4.0

CATEGORIES =	wayland
HOMEPAGE =	https://github.com/ii8/havoc

WANTLIB =	epoll-shim util wayland-client
WANTLIB +=	wayland-cursor xkbcommon m c

# MIT
PERMIT_PACKAGE = Yes

USE_GMAKE =	Yes

BUILD_DEPENDS = wayland/wayland-protocols

LIB_DEPENDS =	devel/epoll-shim \
		wayland/wayland \
		x11/xkbcommon

RUN_DEPENDS =	shells/bash

ALL_TARGET =

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/havoc
	${INSTALL_DATA} ${WRKSRC}/havoc.cfg ${PREFIX}/share/examples/havoc

DEBUG_PACKAGES = ${BUILD_PACKAGES}

.include <bsd.port.mk>
