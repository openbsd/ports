# $OpenBSD: Makefile,v 1.41 2017/04/08 18:21:07 landry Exp $

BROKEN-hppa =	undefined reference to __sync atomic ops
BROKEN-mips64 =	undefined reference to __sync atomic ops
BROKEN-mips64el =	undefined reference to __sync atomic ops

COMMENT =	cross-platform 3D audio API

V =		1.16.0
EPOCH =		0
DISTNAME =	openal-soft-$V
PKGNAME =	openal-$V
CATEGORIES =	audio
SHARED_LIBS =	openal	2.2

HOMEPAGE =	http://kcat.strangesoft.net/openal.html

MAINTAINER =	David Carlier <devnexen@gmail.com>

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c m pthread sndio

MASTER_SITES =	${HOMEPAGE:S,.html,-releases/,}
EXTRACT_SUFX =	.tar.bz2

CONFIGURE_ARGS =-DCMAKE_BUILD_TYPE=OpenBSD \
		-DALSOFT_SYSCONFDIR=${SYSCONFDIR} \
		-DALSOFT_CONFIG_DESTINATION=share/examples/openal \
		-DALSOFT_DLOPEN=Off \
		-DALSOFT_UTILS=On \
		-DALSOFT_EXAMPLES=Off \
		-DALSOFT_REQUIRE_SNDIO=On \
		-DALSOFT_BACKEND_ALSA=Off \
		-DALSOFT_BACKEND_COREAUDIO=Off \
		-DALSOFT_BACKEND_DSOUND=Off \
		-DALSOFT_BACKEND_JACK=Off \
		-DALSOFT_BACKEND_MMDEVAPI=Off \
		-DALSOFT_BACKEND_OPENSL=Off \
		-DALSOFT_BACKEND_OSS=Off \
		-DALSOFT_BACKEND_PORTAUDIO=Off \
		-DALSOFT_BACKEND_PULSEAUDIO=Off \
		-DALSOFT_BACKEND_QSA=Off \
		-DALSOFT_BACKEND_SOLARIS=Off \
		-DALSOFT_BACKEND_WAVE=Off \
		-DALSOFT_BACKEND_WINMM=Off \
		-DALSOFT_NO_CONFIG_UTIL=On

MODULES =	devel/cmake lang/clang gcc4
# clang fails on those architectures
MODGCC4_ARCHS =	sparc64 powerpc
MODGCC4_LANGS =	c c++
MODCLANG_ARCHS =	aarch64 amd64 arm i386 mips64 mips64el
MODCLANG_LANGS =	c c++

SEPARATE_BUILD =Yes
NO_TEST =	Yes

pre-build:
	@${SUBST_CMD} ${WRKSRC}/Alc/alcConfig.c ${WRKSRC}/alsoftrc.sample

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openal
	${INSTALL_DATA} ${WRKSRC}/alsoftrc.sample \
		${PREFIX}/share/examples/openal

.include <bsd.port.mk>
