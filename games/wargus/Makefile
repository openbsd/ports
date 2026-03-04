COMMENT=		Warcraft 2 Mod

GH_ACCOUNT=		Wargus
GH_PROJECT=		wargus
GH_TAGNAME=		v3.3.2
CATEGORIES=		games

HOMEPAGE=		http://stratagus.com/

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB +=		${COMPILER_LIBCXX} bz2 c m png pthread z

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

MODCMAKE_POLICY_VERSION_OVERRIDE = Yes

MODCMAKE_LDFLAGS+=	-L${LOCALBASE}/lib

FIX_CRLF_FILES=		StormLib/src/FileStream.cpp

pre-configure:
	find ${WRKSRC}/ -name "CMakeLists.txt" -type f -exec sed -i \
	-E 's/cmake_minimum_required\([[:space:]]*VERSION[[:space:]]+[^)]+\)/cmake_minimum_required(VERSION 3.5)/g' \
	{} \;

# XXX Depends on StormLib, use bundled version
pre-build:
	cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
	cmake --build ${WRKBUILD} ${_MAKE_VERBOSE} -j ${MAKE_JOBS} -t StormLib

.include <bsd.port.mk>
