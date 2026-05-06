COMMENT =		wayland clipboard utilities

DIST_TUPLE =		github bugaevc wl-clipboard v2.3.0 .

CATEGORIES =		wayland

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB =		c wayland-client

COMPILER =		base-clang ports-gcc

MODULES =		devel/meson

BUILD_DEPENDS =		wayland/wayland-protocols

LIB_DEPENDS =		wayland/wayland

CONFIGURE_ARGS +=	-Dfishcompletiondir="${PREFIX}/share/fish/vendor_completions.d/" \
			-Dzshcompletiondir="${PREFIX}/share/zsh/site-functions/"

.include <bsd.port.mk>
