COMMENT =	cross-platform 3D audio API

V =		1.22.2
DISTNAME =	openal-soft-$V
PKGNAME =	openal-$V
REVISION =	0
EPOCH =		0
CATEGORIES =	audio

SHARED_LIBS =	openal	4.2

HOMEPAGE =	https://openal-soft.org/

MAINTAINER =	David Carlier <devnexen@gmail.com>

# LGPLv2+
PERMIT_PACKAGE =Yes

WANTLIB +=	c m mysofa pthread sndio z ${COMPILER_LIBCXX}

MASTER_SITES =	${HOMEPAGE}openal-releases/
EXTRACT_SUFX =	.tar.bz2

LIB_DEPENDS +=	audio/libmysofa

CONFIGURE_ARGS =-DCMAKE_BUILD_TYPE=OpenBSD \
		-DALSOFT_CONFIG=share/examples/openal \
		-DALSOFT_DLOPEN=Off \
		-DALSOFT_UTILS=On \
		-DALSOFT_EXAMPLES=Off \
		-DALSOFT_REQUIRE_SNDIO=On \
		-DALSOFT_RTKIT=Off \
		-DALSOFT_BACKEND_PIPEWIRE=Off \
		-DALSOFT_BACKEND_WAVE=Off \
		-DALSOFT_CPUEXT_SSE=Off \
		-DALSOFT_CPUEXT_SSE2=Off \
		-DALSOFT_CPUEXT_SSE3=Off \
		-DALSOFT_CPUEXT_SSE4_1=Off \
		-DCMAKE_DISABLE_FIND_PACKAGE_ALSA:Bool=Yes \
		-DCMAKE_DISABLE_FIND_PACKAGE_AudioIO:Bool=Yes \
		-DCMAKE_DISABLE_FIND_PACKAGE_JACK:Bool=Yes \
		-DCMAKE_DISABLE_FIND_PACKAGE_OSS:Bool=Yes \
		-DCMAKE_DISABLE_FIND_PACKAGE_PortAudio:Bool=Yes \
		-DCMAKE_DISABLE_FIND_PACKAGE_PulseAudio:Bool=Yes \
		-DCMAKE_DISABLE_FIND_PACKAGE_QSA:Bool=Yes \
		-DCMAKE_DISABLE_FIND_PACKAGE_SDL2:Bool=Yes \
		-DCMAKE_DISABLE_FIND_PACKAGE_SndFile:Bool=Yes \
		-DALSOFT_NO_CONFIG_UTIL=On

MODULES =	devel/cmake

COMPILER =	base-clang ports-clang ports-gcc

NO_TEST =	Yes

pre-build:
	@${SUBST_CMD} ${WRKSRC}/alc/alconfig.cpp ${WRKSRC}/alsoftrc.sample

.include <bsd.port.mk>
