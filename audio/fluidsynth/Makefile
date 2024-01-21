COMMENT =		SoundFont2 software synthesizer

GH_ACCOUNT =		FluidSynth
GH_PROJECT =		fluidsynth
GH_TAGNAME =		v2.3.4
REVISION =		0

SHARED_LIBS +=	fluidsynth           3.0      # 6.0

CATEGORIES =		audio

HOMEPAGE =		https://www.fluidsynth.org/

# LGPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 c glib-2.0 gthread-2.0 intl
WANTLIB += m readline sndfile sndio

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake

LIB_DEPENDS =		audio/libsndfile \
			devel/glib2 \
			devel/sdl2

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=On \
			-Denable-jack=OFF \
			-Denable-coreaudio=OFF \
			-Denable-coremidi=OFF \
			-Denable-dart=OFF \
			-Denable-dbus=OFF \
			-Denable-lash=OFF \
			-Denable-ladcca=OFF \
			-Denable-midishare=OFF \
			-Denable-oss=OFF \
			-Denable-pipewire=OFF \
			-Denable-pulseaudio=OFF

post-patch:
	cp ${FILESDIR}/fluid_sndio.c ${WRKSRC}/src/drivers/

do-test:
	cd ${WRKBUILD} && exec ${SETENV} ${ALL_TEST_ENV} ninja check

.include <bsd.port.mk>
