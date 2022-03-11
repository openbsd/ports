COMMENT =		tool to build and unpack littlefs images

GH_ACCOUNT =		earlephilhower
GH_PROJECT =		mklittlefs
GH_TAGNAME =		3.0.0

CATEGORIES =		devel

LFS_V =			1863dc7883d82bd6ca79faa164b65341064d1c16
MASTER_SITES0 =		https://github.com/littlefs-project/littlefs/archive/

DISTFILES =		${GH_PROJECT}-${GH_TAGNAME}${EXTRACT_SUFX}
DISTFILES +=		littlefs-${LFS_V}{${LFS_V}}${EXTRACT_SUFX}:0

# BSDv3 littlefs and MIT mklittlefs
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

# C++11
COMPILER =		base-clang ports-gcc base-gcc

MAKE_FLAGS =		CC="${CC}" CXX="${CXX}" \
			VERSION=${GH_TAGNAME} \
			LITTLEFS_VERSION=${LFS_V}

USE_GMAKE =		Yes

NO_TEST =		Yes

post-extract:
	mv ${WRKDIR}/littlefs-${LFS_V}/* ${WRKSRC}/littlefs/

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mklittlefs ${PREFIX}/bin

.include <bsd.port.mk>
