COMMENT =		lightweight, high-performance Wayland compositor

DIST_TUPLE=		github mangowm mango 0.13.1 .

CATEGORIES =		wayland

HOMEPAGE =		https://mangowm.github.io/

MAINTAINER =		Volker Schlecht <volker@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += c input m pcre2-8 scenefx-0.4 wayland-client wayland-server
WANTLIB += xcb-icccm xkbcommon

COMPILER =		base-clang ports-gcc

MODULES =		devel/meson wayland/wlroots

BUILD_DEPENDS =		wayland/wayland-protocols

LIB_DEPENDS =		devel/pcre2 \
			wayland/libinput-openbsd \
			wayland/scenefx \
			wayland/wayland \
			x11/xkbcommon

RUN_DEPENDS =		sysutils/rofi \
			wayland/foot \
			wayland/xwayland

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mango/
	${INSTALL_DATA} ${WRKSRC}/assets/config.conf \
		${PREFIX}/share/examples/mango/

.include <bsd.port.mk>

