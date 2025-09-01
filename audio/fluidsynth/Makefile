COMMENT =		SoundFont2 software synthesizer

# 2.5.x is expected to remove SDL2 support in favour of SDL3
GH_ACCOUNT =		FluidSynth
GH_PROJECT =		fluidsynth
GH_TAGNAME =		v2.4.8

SHARED_LIBS +=	fluidsynth           4.0      # 3.3 (grep LIB_VERSION CMakeLists.txt)

CATEGORIES =		audio

HOMEPAGE =		https://www.fluidsynth.org/

# LGPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 c glib-2.0 gthread-2.0 intl
WANTLIB += m readline sndfile sndio

COMPILER =		base-clang ports-gcc

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
			-Denable-pulseaudio=OFF \
			-Denable-sdl3=OFF

DEBUG_PACKAGES = ${BUILD_PACKAGES}

post-patch:
	cp ${FILESDIR}/fluid_sndio.c ${WRKSRC}/src/drivers/

do-test:
	cd ${WRKBUILD} && exec ${SETENV} ${ALL_TEST_ENV} ninja check

.include <bsd.port.mk>
