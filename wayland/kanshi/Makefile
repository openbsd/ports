COMMENT =	dynamic display configuration for wayland

V =		1.9.0
CATEGORIES =	wayland
DIST_TUPLE =	fdo emersion kanshi v${V} .
KANSHI_COMMIT =	424f454329ec48f7f078b9225a6e3c7b7d8185ae

# MIT
PERMIT_PACKAGE = Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MODULES =	devel/meson

BUILD_DEPENDS = textproc/scdoc

LIB_DEPENDS =	devel/libscfg \
		wayland/wayland

CONFIGURE_ARGS += -Dipc=disabled

WRKDIST =	${WRKDIR}/kanshi-v${V}-${KANSHI_COMMIT}

WANTLIB += c m scfg wayland-client

.include <bsd.port.mk>
