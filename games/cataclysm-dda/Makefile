# $OpenBSD: Makefile,v 1.11 2019/07/12 20:46:15 sthen Exp $

COMMENT=		rogue-like zombie survival game
DISTNAME=		cataclysm-dda-0.D
CATEGORIES=		games
REVISION=		0

GH_ACCOUNT=		CleverRaven
GH_PROJECT=		Cataclysm-DDA
GH_TAGNAME=		0.D
EPOCH=			0

HOMEPAGE=		https://cataclysmdda.org
MAINTAINER=		Tim Meunier <trondd@kagu-tsuchi.com>

# Creative Commons 3.0
PERMIT_PACKAGE=	Yes

FLAVORS=		no_x11
FLAVOR?=

WANTLIB=		${COMPILER_LIBCXX} ${MODLUA_WANTLIB} c \
			execinfo iconv intl m pthread

COMPILER=		base-clang ports-gcc

MODULES=		lang/lua \
			textproc/intltool
MODLUA_VERSION=		5.3
MODLUA_SA=		Yes

BUILD_DEPENDS=		devel/libexecinfo

LIB_DEPENDS=		devel/gettext,-runtime \
			devel/libexecinfo

MAKE_ENV=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

MAKE_FLAGS=		ASTYLE=0 BSD=1 RELEASE=1 USE_XDG_DIR=1 LINTJSON=0 \
			LOCALIZE=1 LANGUAGES=all LUA=1 LUA_BINARY=${MODLUA_BIN:T}

.if ${FLAVOR:Mno_x11}
WANTLIB+=		curses
.else
WANTLIB+=		SDL2 SDL2_image SDL2_mixer SDL2_ttf

LIB_DEPENDS+=		devel/sdl2-mixer \
			devel/sdl2-image \
			devel/sdl2-ttf

MAKE_FLAGS+=		TILES=1 SOUND=1

MAN_TILES=		-tiles
.endif

USE_GMAKE=		Yes

NO_TEST=		Yes

post-patch:
	sed -i 's,/usr,${PREFIX},' ${WRKSRC}/lua/autoexec.lua

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/cataclysm${MAN_TILES}.6 ${PREFIX}/man/man6/

.include <bsd.port.mk>
