COMMENT =	editorial timeline API and interchange format

V =		0.17.0
DISTNAME =	opentimelineio-${V}
REVISION =	0

DIST_TUPLE +=	github AcademySoftwareFoundation OpenTimelineIO v${V} .

SHARED_LIBS +=	opentime                  0.0 # 0.0
SHARED_LIBS +=	opentimelineio            0.0 # 0.0

CATEGORIES =	multimedia

HOMEPAGE =	https://opentimeline.io/

# Apache-2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Imath-3_1 m

# C++17
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

BUILD_DEPENDS =		textproc/rapidjson
LIB_DEPENDS =		math/imath

CONFIGURE_ARGS =	-DOTIO_FIND_IMATH=ON \
			-DOTIO_DEPENDENCIES_INSTALL=OFF

WRKDIST =		${WRKDIR}/OpenTimelineIO-${V}

.include <bsd.port.mk>
