COMMENT =		gzdoom music library as standalone form for reuse

PKGNAME =		${DISTNAME:L}

GH_ACCOUNT =		coelckers
GH_PROJECT =		ZMusic
GH_TAGNAME =		1.1.14

SHARED_LIBS +=		zmusic		2.0 # 1.1.14
SHARED_LIBS +=		zmusiclite	2.0 # 1.1.14

CATEGORIES =		audio

HOMEPAGE =		https://zdoom.org

MAINTAINER =		Timo Myyra <timo.myyra@bittivirhe.fi>

# GPL3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} glib-2.0 m mpg123 sndfile

# C++11
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DDYN_MPG123=NO \
			-DDYN_SNDFILE=NO \
			-DCMAKE_INSTALL_PREFIX=${LOCALBASE}

LIB_DEPENDS =		audio/libsndfile \
			audio/mpg123 \
			devel/glib2

NO_TEST =		Yes

.include <bsd.port.mk>
