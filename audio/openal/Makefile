# $OpenBSD: Makefile,v 1.49 2017/11/15 13:02:42 sthen Exp $

BROKEN-hppa =	undefined reference to __sync atomic ops

COMMENT =	cross-platform 3D audio API

V =		1.17.2
EPOCH =		0
DISTNAME =	openal-soft-$V
PKGNAME =	openal-$V
CATEGORIES =	audio
SHARED_LIBS =	openal	3.0

HOMEPAGE =	http://kcat.strangesoft.net/openal.html

MAINTAINER =	David Carlier <devnexen@gmail.com>

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c m pthread sndio ${COMPILER_LIBCXX}

MASTER_SITES =	${HOMEPAGE:S,.html,-releases/,}
EXTRACT_SUFX =	.tar.bz2

CONFIGURE_ARGS =-DCMAKE_BUILD_TYPE=OpenBSD \
		-DALSOFT_CONFIG=share/examples/openal \
		-DALSOFT_DLOPEN=Off \
		-DALSOFT_UTILS=On \
		-DALSOFT_EXAMPLES=Off \
		-DALSOFT_REQUIRE_SNDIO=On \
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
		-DALSOFT_NO_CONFIG_UTIL=On

MODULES =	devel/cmake

COMPILER =		base-clang ports-clang ports-gcc

SEPARATE_BUILD =Yes
NO_TEST =	Yes

pre-build:
	@${SUBST_CMD} ${WRKSRC}/Alc/alcConfig.c ${WRKSRC}/alsoftrc.sample

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openal
	${INSTALL_DATA} ${WRKSRC}/alsoftrc.sample \
		${PREFIX}/share/examples/openal

.include <bsd.port.mk>
