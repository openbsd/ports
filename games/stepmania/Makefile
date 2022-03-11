COMMENT = 	dance music game
CATEGORIES = 	games emulators

DISTNAME = 	stepmania-5.0.12
HOMEPAGE =	http://www.stepmania.com

GH_ACCOUNT =	stepmania
GH_PROJECT =	stepmania
GH_TAGNAME =	v5.0.12
DEBUG_PACKAGES = ${BUILD_PACKAGES}
# Code base is mostly BSD, with a few tidbits GPL
PERMIT_PACKAGE = Yes
MAINTAINER =	Marc Espie <espie@openbsd.org>
EPOCH =	0

MODULES =	devel/cmake
CONFIGURE_STYLE = cmake

#MODCMAKE_DEBUG =	Yes

INC=-I${X11BASE}/include -I${LOCALBASE}/include
CONFIGURE_ARGS =	-DCMAKE_CXX_FLAGS="${CXXFLAGS} ${INC}"
CONFIGURE_ARGS +=	-DCMAKE_C_FLAGS="${CFLAGS} ${INC}"
CONFIGURE_ARGS +=	-Wno-dev
CONFIGURE_ARGS +=	-DWITH_SYSTEM_FFMPEG=Yes
CONFIGURE_ARGS +=	-DCMAKE_INSTALL_PREFIX=${PREFIX}/libdata

NO_TEST =	Yes

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =	audio/libvorbis \
		audio/libmad \
		graphics/ffmpeg \
		audio/pulseaudio

BUILD_DEPENDS +=	devel/yasm \
			graphics/glew

WANTLIB += GL GLU X11 Xext
WANTLIB += Xrandr c
WANTLIB += m pthread ${COMPILER_LIBCXX} z
WANTLIB += avcodec avformat avutil bz2
WANTLIB += mad ogg pulse swscale vorbis vorbisfile
WANTLIB += jpeg
WANTLIB += ICE SM pcre

DATADIR = libdata/stepmania-5.0
D = 	Announcers BGAnimations BackgroundEffects BackgroundTransitions \
	Characters Courses Data NoteSkins Scripts Songs Themes

SUBST_VARS = DATADIR
FIX_CRLF_FILES =	extern/lua-5.1/src/loadlib.c src/ProfileManager.cpp


post-install:
	cd ${PREFIX}/bin && ln -s ../$(DATADIR)/stepmania

.include <bsd.port.mk>
