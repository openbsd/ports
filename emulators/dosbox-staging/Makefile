# links with wxneeded by default in meson.build
# (some) protected mode games like Blood need wxneeded and nobtcfi
USE_WXNEEDED =	Yes
USE_NOBTCFI =	Yes

COMMENT =	modern continuation of DOSBox

V =		0.82.2
PKGNAME =	dosbox-staging-${V}
DIST_TUPLE +=	github dosbox-staging dosbox-staging v${V} .

CATEGORIES =	emulators
HOMEPAGE =	https://www.dosbox-staging.org/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# GPLv2+
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} GL SDL2 SDL2_net c fluidsynth iir
WANTLIB += m opusfile png slirp speexdsp z

COMPILER =	base-clang ports-gcc

MODULES =	devel/meson

BUILD_DEPENDS =	devel/git \
		devel/gtest \
		shells/bash
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic
LIB_DEPENDS =	audio/fluidsynth \
		audio/iir1 \
		audio/opusfile \
		audio/speexdsp \
		devel/sdl2-net \
		graphics/png \
		net/libslirp

# use_mt32emu requires https://github.com/munt/munt
CONFIGURE_ARGS = -Duse_mt32emu=false

# avoid conflict with games/dosbox
post-install:
	mv ${PREFIX}/bin/dosbox{,-staging}
	mv ${PREFIX}/man/man1/dosbox{,-staging}.1

.include <bsd.port.mk>
