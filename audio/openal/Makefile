COMMENT =	cross-platform 3D audio API

V =		1.23.1
DISTNAME =	openal-soft-$V
PKGNAME =	openal-$V
EPOCH =		0
CATEGORIES =	audio

SHARED_LIBS =	openal	5.0

HOMEPAGE =	https://openal-soft.org/

MAINTAINER =	David Carlier <devnexen@gmail.com>

# LGPLv2+
PERMIT_PACKAGE =Yes

WANTLIB +=	c m mysofa pthread sndio z ${COMPILER_LIBCXX}

SITES =		${HOMEPAGE}openal-releases/
EXTRACT_SUFX =	.tar.bz2

LIB_DEPENDS +=	audio/libmysofa

CONFIGURE_ARGS =-DALSOFT_BACKEND_PIPEWIRE=Off \
		-DALSOFT_BACKEND_WAVE=Off \
		-DALSOFT_DLOPEN=Off \
		-DALSOFT_EXAMPLES=Off \
		-DALSOFT_NO_CONFIG_UTIL=On \
		-DALSOFT_RTKIT=Off \
		-DCMAKE_BUILD_TYPE=OpenBSD \
		-DCMAKE_DISABLE_FIND_PACKAGE_ALSA:Bool=Yes \
		-DCMAKE_DISABLE_FIND_PACKAGE_AudioIO:Bool=Yes \
		-DCMAKE_DISABLE_FIND_PACKAGE_JACK:Bool=Yes \
		-DCMAKE_DISABLE_FIND_PACKAGE_OpenSL:Bool=Yes \
		-DCMAKE_DISABLE_FIND_PACKAGE_OSS:Bool=Yes \
		-DCMAKE_DISABLE_FIND_PACKAGE_PortAudio:Bool=Yes \
		-DCMAKE_DISABLE_FIND_PACKAGE_PulseAudio:Bool=Yes \
		-DCMAKE_DISABLE_FIND_PACKAGE_SDL2:Bool=Yes \
		-DCMAKE_DISABLE_FIND_PACKAGE_SndFile:Bool=Yes

.if ${MACHINE_ARCH} == "arm"
CONFIGURE_ARGS +=-DALSOFT_CPUEXT_NEON=Off
.endif

MODULES =	devel/cmake

COMPILER =	base-clang ports-gcc

NO_TEST =	Yes

pre-build:
	@${SUBST_CMD} ${WRKSRC}/alc/alconfig.cpp ${WRKSRC}/alsoftrc.sample

.include <bsd.port.mk>
