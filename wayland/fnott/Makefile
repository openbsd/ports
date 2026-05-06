COMMENT =		lightweight Wayland notification daemon

V =			1.8.0

DIST_TUPLE =		codeberg dnkl fnott ${V} .

CATEGORIES =		wayland

MAINTAINER =		Volker Schlecht <openbsd-ports@schlecht.dev>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c dbus-1 epoll-shim fcft fontconfig m pixman-1 png
WANTLIB += wayland-client wayland-cursor

COMPILER =		base-clang ports-gcc

MODULES =		devel/meson

BUILD_DEPENDS =		devel/tllist \
			textproc/scdoc \
			wayland/libinput-openbsd \
			wayland/wayland-protocols

LIB_DEPENDS =		devel/epoll-shim \
			graphics/fcft \
			graphics/png \
			wayland/wayland \
			x11/dbus

RUN_DEPENDS =		devel/desktop-file-utils

WRKDIST =		${WRKDIR}/fnott

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fnott
	${INSTALL_DATA} ${WRKSRC}/fnott.ini ${PREFIX}/share/examples/fnott

.include <bsd.port.mk>

