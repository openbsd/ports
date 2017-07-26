# $OpenBSD: Makefile,v 1.15 2017/07/26 22:45:21 sthen Exp $

COMMENT-main =		Worms-like strategy game
COMMENT-server =	Worms-like strategy game, server

MULTI_PACKAGES =	-main -server

SHARED_LIBS +=  physlayer                 0.0 # 0.0

R =			0.9.22
REVISION =		8
V =			$R
DISTNAME =		hedgewars-src-$V
PKGNAME-main =		hedgewars-$V
PKGNAME-server =	hedgewars-server-$V

CATEGORIES =		games

HOMEPAGE =		http://www.hedgewars.org/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB-main += QtGui QtNetwork SDL SDL_image SDL_mixer SDL_net SDL_ttf
WANTLIB-main += c m physfs png pthread ${COMPILER_LIBCXX} util z
WANTLIB-main += ${MODLUA_WANTLIB} ${MODQT4_WANTLIB}

# dlopen()ed; do not remove.
WANTLIB-main += GL GLU glut

WANTLIB-server = c iconv m pthread util

MASTER_SITES =		http://download.gna.org/hedgewars/
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake \
			lang/ghc \
			lang/lua \
			x11/qt4

BUILD_DEPENDS +=	archivers/hs-zlib \
			devel/hs-vector \
			devel/hs-network \
			devel/hs-random \
			devel/hs-hslogger \
			devel/hs-dataenc \
			devel/hs-utf8-string \
			lang/fpc>=3.0.0p2 \
			security/hs-SHA \
			security/hs-entropy \
			textproc/hs-bytestring-show

LIB_DEPENDS-main =	devel/sdl-image \
			devel/sdl-ttf \
			devel/sdl-net \
			devel/sdl-mixer \
			devel/physfs \
			graphics/freeglut \
			${MODQT4_LIB_DEPENDS} \
			${MODLUA_LIB_DEPENDS}

LIB_DEPENDS-server =	converters/libiconv

CONFIGURE_ARGS +=	-DNOVIDEOREC=ON

CONFIGURE_ENV +=	HOME="${WRKBUILD}"

MODGHC_BUILD =		nort

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/hedgewars-src-$R

.include <bsd.port.mk>
