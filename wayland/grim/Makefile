COMMENT =	grab images from a Wayland compositor

V =		1.5.0
DISTNAME =	grim-v$V
PKGNAME =	grim-$V
SITES =		https://gitlab.freedesktop.org/emersion/grim/-/archive/v${V}/

CATEGORIES =	wayland

# MIT
PERMIT_PACKAGE = Yes

WRKDIST =	${WRKDIR}/grim-v${V}

COMPILER =      base-clang ports-gcc
COMPILER_LANGS = c

MODULES =	devel/meson

BUILD_DEPENDS =	wayland/wayland-protocols \
		textproc/scdoc

LIB_DEPENDS =	graphics/jpeg \
		graphics/png \
		wayland/wayland

WANTLIB +=	pixman-1 png wayland-client jpeg m c

DEBUG_PACKAGES =${BUILD_PACKAGES}

.include <bsd.port.mk>
