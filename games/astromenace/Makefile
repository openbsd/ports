COMMENT =	hardcore 3D space shmup

V =		1.4.3
GH_ACCOUNT =	viewizard
GH_PROJECT =	astromenace
GH_TAGNAME =	v${V}

CATEGORIES =	games

HOMEPAGE =	http://www.viewizard.com/

# code GPLv3+, data a mix of GPLv3+, CC BY-SA 3.0, SIL OFL 1.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU SDL2 alut c freetype m ogg
WANTLIB += openal vorbis vorbisfile

COMPILER =	base-clang ports-gcc base-gcc

MODULES =	devel/cmake

LIB_DEPENDS =	audio/freealut \
		audio/libvorbis \
		audio/libogg \
		audio/openal \
		devel/sdl2

CONFIGURE_ARGS =	-DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
			-DDATADIR=${LOCALBASE}/share/astromenace

NO_TEST =		Yes

.include <bsd.port.mk>
