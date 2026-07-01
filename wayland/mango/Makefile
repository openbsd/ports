COMMENT =		lightweight, high-performance Wayland compositor

DIST_TUPLE=		github mangowm mango 0.14.4 .

CATEGORIES =		wayland

HOMEPAGE =		https://mangowm.github.io/

MAINTAINER =		Volker Schlecht <volker@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += c cjson input m pcre2-8 pixman-1 scenefx-0.4 wayland-client
WANTLIB += wayland-server xcb-icccm xkbcommon

COMPILER =		base-clang ports-gcc

MODULES =		devel/meson wayland/wlroots

BUILD_DEPENDS =		wayland/wayland-protocols

LIB_DEPENDS =		devel/cjson \
			devel/pcre2 \
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
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mango \
		${PREFIX}/share/doc/mango/bindings \
		${PREFIX}/share/doc/mango/configuration \
		${PREFIX}/share/doc/mango/visuals \
		${PREFIX}/share/doc/mango/window-management
	${INSTALL_DATA} ${WRKSRC}/docs/{faq,ipc,screenshot,quick-start}.md \
		${PREFIX}/share/doc/mango
	${INSTALL_DATA} ${WRKSRC}/docs/bindings/*.md \
		${PREFIX}/share/doc/mango/bindings/
	${INSTALL_DATA} ${WRKSRC}/docs/configuration/*.md \
		${PREFIX}/share/doc/mango/configuration/
	${INSTALL_DATA} ${WRKSRC}/docs/visuals/*.md \
		${PREFIX}/share/doc/mango/visuals/
	${INSTALL_DATA} ${WRKSRC}/docs/window-management/*.md \
		${PREFIX}/share/doc/mango/window-management/

.include <bsd.port.mk>

