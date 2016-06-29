# $OpenBSD: Makefile,v 1.7 2016/06/29 15:11:45 dcoppa Exp $

COMMENT-main =		Worms-like strategy game
COMMENT-server =	Worms-like strategy game, server

MULTI_PACKAGES =	-main -server

SHARED_LIBS +=  physlayer                 0.0 # 0.0

R =			0.9.22
REVISION =		2
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
WANTLIB-main += c m physfs png pthread stdc++ util z
WANTLIB-main += ${MODLUA_WANTLIB} ${MODQT4_WANTLIB}

# dlopen()ed; do not remove.
WANTLIB-main += GL GLU glut

WANTLIB-server = c m pthread util ${MODLIBICONV_WANTLIB}

MASTER_SITES =		http://download.gna.org/hedgewars/
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake \
			x11/qt4 \
			lang/lua \
			converters/libiconv
BUILD_DEPENDS =		lang/fpc
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

PSEUDO_FLAVORS = no_server
FLAVOR ?=

.if ${FLAVOR:Mno_server}
CONFIGURE_ARGS +=	-DNOSERVER=ON
.else
MODULES +=		lang/ghc
BUILD_DEPENDS +=	devel/hs-vector \
			devel/hs-network \
			devel/hs-random \
			devel/hs-hslogger \
			devel/hs-dataenc \
			devel/hs-utf8-string \
			security/hs-SHA \
			security/hs-entropy \
			textproc/hs-bytestring-show \
			archivers/hs-zlib
MODGHC_BUILD =		nort
.endif

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/hedgewars-src-$R

.include <bsd.port.mk>
