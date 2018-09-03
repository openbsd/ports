# $OpenBSD: Makefile,v 1.6 2018/09/03 19:02:21 bcallah Exp $

COMMENT=		rogue-like zombie survival game
DISTNAME=		cataclysm-dda-2018.09.02
CATEGORIES=		games

GH_ACCOUNT=		CleverRaven
GH_PROJECT=		Cataclysm-DDA
GH_COMMIT=		47298ed1dea10582ae57a3decfe548640ac576de

HOMEPAGE=		http://en.cataclysmdda.com
MAINTAINER=		Tim Meunier <trondd@kagu-tsuchi.com>

# Creative Commons 3.0
PERMIT_PACKAGE_CDROM=	Yes

FLAVORS=		no_x11
FLAVOR?=

WANTLIB=		${COMPILER_LIBCXX} ${MODLUA_WANTLIB} c \
			iconv intl m pthread

COMPILER=		base-clang ports-gcc

MODULES=		lang/lua \
			textproc/intltool
MODLUA_VERSION=		5.3
MODLUA_SA=		Yes

BUILD_DEPENDS=		devel/libexecinfo

LIB_DEPENDS=		devel/gettext

MAKE_ENV=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

MAKE_FLAGS=		ASTYLE=0 RELEASE=1 USE_XDG_DIR=1 LOCALIZE=1 \
			LANGUAGES=all LUA=1 LUA_BINARY=${MODLUA_BIN:T}

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

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/cataclysm${MAN_TILES}.6 ${PREFIX}/man/man6/

.include <bsd.port.mk>
