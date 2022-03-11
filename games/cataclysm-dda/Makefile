COMMENT=		rogue-like zombie survival game
CATEGORIES=		games

GH_ACCOUNT=		CleverRaven
GH_PROJECT=		Cataclysm-DDA
GH_TAGNAME=		0.F-3
DISTNAME=		cataclysm-dda-0.F.3
EPOCH=			0
REVISION=		0

HOMEPAGE=		https://cataclysmdda.org
MAINTAINER=		Kirill Bychkov <kirby@openbsd.org>

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

MAKE_ENV=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

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

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/cataclysm${MAN_TILES}.6 ${PREFIX}/man/man6/

.include <bsd.port.mk>
