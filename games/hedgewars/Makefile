# $OpenBSD: Makefile,v 1.24 2019/09/30 12:52:39 kili Exp $

BROKEN-i386 =		Could NOT find GLEW (missing: GLEW_LIBRARY GLEW_INCLUDE_DIR)

COMMENT-main =		Worms-like strategy game
COMMENT-server =	Worms-like strategy game, server

MULTI_PACKAGES =	-main -server

SHARED_LIBS +=  physlayer                 0.0 # 0.0

R =			0.9.25
V =			$R
DISTNAME =		hedgewars-src-$V
PKGNAME-main =		hedgewars-$V
PKGNAME-server =	hedgewars-server-$V
REVISION-main =		0
REVISION-server =	1

CATEGORIES =		games

HOMEPAGE =		http://www.hedgewars.org/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB-main += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5Widgets
WANTLIB-main += SDL2 SDL2_image SDL2_mixer SDL2_net SDL2_ttf c ${MODLUA_WANTLIB}
WANTLIB-main += m physfs png z

# dlopen()ed; do not remove.
WANTLIB-main += GL GLU glut

WANTLIB-server += c ffi gmp iconv m

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		http://www.hedgewars.org/download/releases/
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake \
			lang/ghc \
			lang/lua \
			x11/qt5

BUILD_DEPENDS +=	archivers/hs-zlib \
			devel/hs-vector \
			devel/hs-network \
			devel/hs-random \
			devel/hs-hslogger \
			devel/hs-sandi \
			devel/hs-regex-tdfa \
			devel/hs-utf8-string \
			devel/hs-vector \
			lang/fpc>=3.0.0p2 \
			security/hs-SHA \
			security/hs-entropy \
			textproc/hs-bytestring-show

LIB_DEPENDS-main =	devel/sdl2-image \
			devel/sdl2-ttf \
			devel/sdl2-net \
			devel/sdl2-mixer \
			devel/physfs \
			graphics/freeglut \
			${MODQT5_LIB_DEPENDS} \
			${MODLUA_LIB_DEPENDS}

LIB_DEPENDS-server =	converters/libiconv \
			devel/gmp \
			devel/libffi

CONFIGURE_ARGS +=	-DNOVIDEOREC=ON

CONFIGURE_ENV +=	HOME="${WRKBUILD}" \
			CFLAGS="${CFLAGS} -I${X11BASE}/include" \
			CXXFLAGS="${CXXFLAGS} -I${X11BASE}/include"

MODGHC_BUILD =		nort

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/hedgewars-src-$R

.include <bsd.port.mk>
