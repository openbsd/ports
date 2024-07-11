COMMENT=	astrosmash clone for X

DISTNAME=	cosmosmash-1.5.0

CATEGORIES=	games

HOMEPAGE=	http://perso.b2b2c.ca/~sarrazip/dev/cosmosmash.html

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_gfx-1.0 SDL2_image SDL2_mixer
WANTLIB += SDL2_ttf c flatzebra-0.2 m

COMPILER=	base-clang ports-gcc base-gcc

SITES=		http://perso.b2b2c.ca/~sarrazip/dev/

LIB_DEPENDS=	devel/flatzebra>=0.2.0

RUN_DEPENDS=	devel/desktop-file-utils

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
