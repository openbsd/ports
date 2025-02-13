COMMENT=		Warcraft 2 Mod

V=			3.3.2
DISTNAME=		wargus-$V
CATEGORIES=		games
SITES=			https://github.com/Wargus/wargus/archive/refs/tags/
DISTFILES=		wargus-{v}${V}${EXTRACT_SUFX}

HOMEPAGE=		http://stratagus.com/

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB+= 		${COMPILER_LIBCXX} bz2 c m png pthread z

MODULES=		devel/cmake

COMPILER=		base-clang ports-gcc

BUILD_DEPENDS=		games/stratagus

LIB_DEPENDS=		archivers/bzip2 \
			graphics/png

RUN_DEPENDS=		archivers/innoextract \
			devel/desktop-file-utils \
			games/stratagus \
			graphics/ffmpeg \
			sysutils/cdrtools

CONFIGURE_ARGS+=	-DGAMEDIR=${LOCALBASE}/bin/

MODCMAKE_LDFLAGS+=	-L${LOCALBASE}/lib

WRKDIST=		${WRKDIR}/wargus-${V}

FIX_CRLF_FILES=		StormLib/src/FileStream.cpp

# XXX Depends on StormLib, use bundled version
pre-build:
	cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
	cmake --build ${WRKBUILD} ${_MAKE_VERBOSE} -j ${MAKE_JOBS} -t StormLib

.include <bsd.port.mk>
