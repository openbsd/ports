COMMENT =	dynamic display configuration for wayland

V =		1.9.0
CATEGORIES =	wayland
DIST_TUPLE =	fdo emersion kanshi v${V} .
REVISION =	1

# MIT
PERMIT_PACKAGE = Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MODULES =	devel/meson

BUILD_DEPENDS = textproc/scdoc

LIB_DEPENDS =	devel/libscfg \
		devel/vali \
		wayland/wayland

WRKDIST =	${WRKDIR}/kanshi-v${V}

WANTLIB += c json-c m scfg vali wayland-client

.include <bsd.port.mk>
