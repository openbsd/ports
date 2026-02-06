COMMENT =		sound and music computing system

DIST_TUPLE =		github csound csound 7.0.0-beta.12 .

PKGNAME =		csound-7.0.0beta12

CATEGORIES =		audio

SHARED_LIBS +=		csound64		0.0 # 0.0

HOMEPAGE =		https://csound.com

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c curl execinfo intl m portaudio
WANTLIB += portmidi pulse pulse-mainloop-glib pulse-simple samplerate
WANTLIB += sndfile

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/python

CONFIGURE_ARGS =	-DBUILD_TESTS=ON \
			-DBUILD_STATIC_LIBRARY=ON \
			-DUSE_JACK=OFF \
			-DUSE_PORTAUDIO=ON \
			-DUSE_PORTMIDI=ON \
			-DUSE_PULSEAUDIO=ON

BUILD_DEPENDS =		devel/bison \
			devel/gettext,-tools \
			devel/gtest

LIB_DEPENDS =		audio/libsamplerate \
			audio/libsndfile \
			audio/portaudio-svn \
			audio/portmidi \
			audio/pulseaudio \
			devel/gettext,-runtime \
			net/curl

TEST_ENV =		OPCODE7DIR64=${WRKBUILD}
PORTHOME =		${WRKDIR}

post-install:
	${MODPY_COMPILEALL} ${DESTDIR}${MODPY_SITEPKG}/ctcsound.py

.include <bsd.port.mk>
