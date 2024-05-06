COMMENT =		PostgreSQL backend for Orthanc

VERSION =		4.0
PLUGIN =		PostgreSQL
REVISION =		3

DISTNAME =		Orthanc${PLUGIN}-${VERSION}
EXTRACT_ONLY =		${DISTNAME}${EXTRACT_SUFX}

DISTFILES.f =		${FRAMEWORK_DISTFILE}
SITES.f =		https://orthanc.uclouvain.be/downloads/sources/orthanc/

WANTLIB += ${COMPILER_LIBCXX} boost_atomic-mt boost_chrono-mt
WANTLIB += boost_date_time-mt boost_filesystem-mt boost_iostreams-mt
WANTLIB += boost_regex-mt boost_system-mt boost_thread-mt crypto
WANTLIB += jsoncpp m pq ssl uuid z

# __int128, zero-sized arrays (hard failure with base gcc)
COMPILER =		base-clang ports-clang ports-gcc

MODULES =		lang/python

MODPY_RUNDEP =		No
# prevent overrides from the python module
CONFIGURE_STYLE =	cmake

BUILD_DEPENDS =		databases/postgresql,-server \
			devel/gtest \
			graphics/orthanc/server

RUN_DEPENDS =		graphics/orthanc/server

LIB_DEPENDS =		databases/postgresql \
			devel/boost \
			devel/jsoncpp \
			sysutils/e2fsprogs

CONFIGURE_ARGS =	-DALLOW_DOWNLOADS=OFF \
			-DUSE_SYSTEM_UUID=ON

CONFIGURE_ARGS +=	-DORTHANC_FRAMEWORK_ROOT="${WRKSRC}/ThirdPartyDownloads/Orthanc-${FRAMEWORK_VERSION}/OrthancFramework/Sources" \
			-DORTHANC_FRAMEWORK_SOURCE=path

WRKSRC =		${WRKDIR}/${DISTNAME}/PostgreSQL

post-extract:
	mkdir ${WRKSRC}/ThirdPartyDownloads/
	tar -xzf ${DISTDIR}/${FRAMEWORK_DISTFILE} -C ${WRKSRC}/ThirdPartyDownloads/

.include <bsd.port.mk>
