COMMENT =		SoundFont2 software synthesizer

GH_ACCOUNT =		FluidSynth
GH_PROJECT =		fluidsynth
GH_TAGNAME =		v2.5.6

SHARED_LIBS +=	fluidsynth           5.0      # 3.5 (grep LIB_VERSION CMakeLists.txt)

CATEGORIES =		audio

# https://github.com/FluidSynth/fluidsynth/blob/master/doc/wiki/ChangeLog.md
HOMEPAGE =		https://www.fluidsynth.org/

# LGPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL3 c glib-2.0 gthread-2.0 intl
WANTLIB += m readline sndfile sndio

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/gcem

LIB_DEPENDS =		audio/libsndfile \
			devel/gettext,-runtime \
			devel/glib2 \
			devel/sdl3

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
			-Denable-sdl3=ON

DEBUG_PACKAGES = ${BUILD_PACKAGES}

post-patch:
	cp ${FILESDIR}/fluid_sndio.c ${WRKSRC}/src/drivers/

do-test:
	cd ${WRKBUILD} && exec ${SETENV} ${ALL_TEST_ENV} ninja check

.include <bsd.port.mk>
