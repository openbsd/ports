COMMENT=		Warcraft Orcs and Humans Mod

V=			3.3.2
DISTNAME=		war1gus-$V
CATEGORIES=		games
SITES=			https://github.com/Wargus/war1gus/archive/refs/tags/
DISTFILES=		war1gus-{v}${V}${EXTRACT_SUFX}

HOMEPAGE=		https://stratagus.com/war1gus.html

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += 		${COMPILER_LIBCXX} c m png pthread z

MODULES=		devel/cmake lang/python

COMPILER=		base-clang ports-gcc

BUILD_DEPENDS=		games/stratagus \
			graphics/ImageMagick

LIB_DEPENDS=		graphics/png

RUN_DEPENDS=		archivers/innoextract \
			devel/desktop-file-utils \
			games/stratagus \
			graphics/ffmpeg \
			sysutils/cdrtools

CONFIGURE_ARGS+=	-DGAMEDIR=${LOCALBASE}/bin/

WRKDIST=		${WRKDIR}/war1gus-${V}

post-install:
	${MODPY_COMPILEALL} \
		${PREFIX}/share/games/stratagus/war1gus/scripts/

.include <bsd.port.mk>
