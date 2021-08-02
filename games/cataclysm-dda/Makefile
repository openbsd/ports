# $OpenBSD: Makefile,v 1.19 2021/08/02 19:13:28 cwen Exp $

COMMENT=		rogue-like zombie survival game
CATEGORIES=		games

GH_ACCOUNT=		CleverRaven
GH_PROJECT=		Cataclysm-DDA
GH_TAGNAME=		0.F
DISTNAME=		cataclysm-dda-0.F
EPOCH=			0

HOMEPAGE=		https://cataclysmdda.org
MAINTAINER=		Tim Meunier <trondd@kagu-tsuchi.com>

# Creative Commons 3.0
PERMIT_PACKAGE=	Yes

FLAVORS=		no_x11
FLAVOR?=

WANTLIB=		${COMPILER_LIBCXX} c execinfo iconv intl m

# C++14
COMPILER=		base-clang ports-gcc

MODULES=		textproc/intltool

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+3,-guic

LIB_DEPENDS=		devel/gettext,-runtime

MAKE_ENV=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" LDFLAGS="${LDFLAGS}"

MAKE_FLAGS=		ASTYLE=0 RELEASE=1 USE_XDG_DIR=1 \
			LINTJSON=0 LANGUAGES=all

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

# relocation truncated to fit: R_PPC_PLTREL24 -- to be removed once lld is the
# default linker on powerpc
.if ${MACHINE_ARCH} == "powerpc"
LDFLAGS+=		-Wl,-relax
.endif

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/cataclysm${MAN_TILES}.6 ${PREFIX}/man/man6/

.include <bsd.port.mk>
