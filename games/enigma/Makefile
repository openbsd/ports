COMMENT=	Oxyd/Rock'n'Roll clone

V=		1.30
PKGNAME=	enigma-${V}
DISTNAME=	Enigma-${V}
REVISION=	0

CATEGORIES=	games x11

HOMEPAGE=	https://github.com/Enigma-Game/Enigma/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_image SDL2_mixer SDL2_ttf
WANTLIB += c curl enet iconv intl m png xerces-c z

# C++14
COMPILER =	base-clang ports-gcc

SITES=		https://github.com/Enigma-Game/Enigma/releases/download/${V}/
EXTRACT_SUFX =	-src.tar.gz

WRKDIST=	${WRKDIR}/enigma-${V}

BUILD_DEPENDS =	graphics/ImageMagick

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+4,-guic

LIB_DEPENDS=	devel/gettext,-runtime \
		converters/libiconv \
		devel/sdl2-image \
		devel/sdl2-mixer \
		devel/sdl2-ttf \
		graphics/png \
		net/curl \
		net/enet \
		textproc/xerces-c

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-system-enet
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib -lintl -liconv"

.include <bsd.port.mk>
