# links with wxneeded by default in meson.build
# (some) protected mode games like Blood need wxneeded and nobtcfi
USE_WXNEEDED =	Yes
USE_NOBTCFI =	Yes

BROKEN-i386 =	ld.lld: error: relocation R_386_32 cannot be used against local symbol; recompile with -fPIC

COMMENT =	modern continuation of DOSBox

V =		0.82.2
PKGNAME =	dosbox-staging-${V}
DIST_TUPLE +=	github dosbox-staging dosbox-staging v${V} .
REVISION =	0

CATEGORIES =	emulators
HOMEPAGE =	https://www.dosbox-staging.org/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# GPLv2+
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} GL SDL2 SDL2_net c fluidsynth iir
WANTLIB += m mt32emu opusfile png slirp speexdsp z

COMPILER =	base-clang ports-gcc

MODULES =	devel/meson

BUILD_DEPENDS =	devel/git \
		devel/gtest \
		shells/bash
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic
LIB_DEPENDS =	audio/fluidsynth \
		audio/iir1 \
		audio/munt \
		audio/opusfile \
		audio/speexdsp \
		devel/sdl2-net \
		graphics/png \
		net/libslirp

# avoid conflict with games/dosbox
post-install:
	mv ${PREFIX}/bin/dosbox{,-staging}
	mv ${PREFIX}/man/man1/dosbox{,-staging}.1

.include <bsd.port.mk>
