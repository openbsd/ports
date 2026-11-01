COMMENT =	dynamic display configuration for wayland

CATEGORIES =	wayland
DIST_TUPLE =	fdo emersion kanshi v1.9.0 .
DIST_SUBDIR =	rerolled
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

WANTLIB += c json-c m scfg vali wayland-client

WRKDIST =	${WRKDIR}/kanshi-v${V}

.include <bsd.port.mk>
