# $OpenBSD: Makefile,v 1.14 2021/01/04 17:00:36 kirby Exp $

COMMENT=		rogue-like zombie survival game
CATEGORIES=		games

GH_ACCOUNT=		CleverRaven
GH_PROJECT=		Cataclysm-DDA
GH_TAGNAME=		0.E-3
DISTNAME=		cataclysm-dda-0.E.3
EPOCH=			0

HOMEPAGE=		https://cataclysmdda.org
MAINTAINER=		Tim Meunier <trondd@kagu-tsuchi.com>

# Creative Commons 3.0
PERMIT_PACKAGE=	Yes

FLAVORS=		no_x11
FLAVOR?=

WANTLIB=		${COMPILER_LIBCXX} c iconv intl m pthread

# C++14
COMPILER=		base-clang ports-gcc

MODULES=		textproc/intltool

LIB_DEPENDS=		devel/gettext,-runtime \
			devel/libexecinfo

MAKE_ENV=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

MAKE_FLAGS=		ASTYLE=0 BSD=1 RELEASE=1 USE_XDG_DIR=1 \
			LINTJSON=0 LOCALIZE=1 LANGUAGES=all BACKTRACE=0

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
