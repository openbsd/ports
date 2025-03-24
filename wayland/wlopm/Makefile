COMMENT =	Simple client for display power management under Wayland

V = 		1.0.0
DISTNAME =	wlopm-${V}
DIST_TUPLE =	srht  leon_plickat wlopm v${V} .

CATEGORIES =	wayland

# GPLv3
PERMIT_PACKAGE = Yes

WANTLIB =	wayland-client c

COMPILER =	base-clang
COMPILER_LANGS = c

LIB_DEPENDS =	wayland/wayland

USE_GMAKE =	Yes

DEBUG_PACKAGES = ${BUILD_PACKAGES}

WRKDIST =	${WRKDIR}/wlopm-v${V}

ALL_TARGET =

.include <bsd.port.mk>
