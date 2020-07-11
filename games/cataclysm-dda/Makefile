# $OpenBSD: Makefile,v 1.13 2020/07/11 17:52:19 kirby Exp $

COMMENT=		rogue-like zombie survival game
DISTNAME=		cataclysm-dda-0.E.2
CATEGORIES=		games

GH_ACCOUNT=		CleverRaven
GH_PROJECT=		Cataclysm-DDA
GH_TAGNAME=		0.E-2
EPOCH=			0

HOMEPAGE=		https://cataclysmdda.org
MAINTAINER=		Tim Meunier <trondd@kagu-tsuchi.com>

# Creative Commons 3.0
PERMIT_PACKAGE=	Yes

FLAVORS=		no_x11
FLAVOR?=

WANTLIB=		${COMPILER_LIBCXX} c execinfo iconv intl m pthread

COMPILER=		base-clang ports-gcc

MODULES=		textproc/intltool

BUILD_DEPENDS=		devel/libexecinfo

LIB_DEPENDS=		devel/gettext,-runtime \
			devel/libexecinfo

MAKE_ENV=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

MAKE_FLAGS=		ASTYLE=0 BSD=1 RELEASE=1 USE_XDG_DIR=1 \
			LINTJSON=0 LOCALIZE=1 LANGUAGES=all

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
