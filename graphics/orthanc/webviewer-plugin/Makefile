COMMENT =		web viewer plugin for Orthanc

VERSION =		2.8
REVISION =		3

PLUGIN =		WebViewer

PLUGIN_3RDPARTY =	cornerstone-0.11.0.zip \
			jquery-ui-1.11.3.zip \
			jsPanel-2.3.3-fixed.zip \
			pako-0.2.5.zip \
			js-url-1.8.6.zip

DISTNAME =		Orthanc${PLUGIN}-${VERSION}
EXTRACT_ONLY =		${DISTNAME}${EXTRACT_SUFX}

DISTFILES.p +=		${PLUGIN_3RDPARTY}
SITES.p =		https://www.orthanc-server.com/downloads/third-party/WebViewer/

DISTFILES.f +=		${FRAMEWORK_DISTFILE}
SITES.f =		https://www.orthanc-server.com/downloads/get.php?path=/orthanc/

WANTLIB += ${COMPILER_LIBCXX} boost_atomic-mt boost_chrono-mt
WANTLIB += boost_date_time-mt boost_filesystem-mt boost_iostreams-mt
WANTLIB += boost_regex-mt boost_system-mt boost_thread-mt jsoncpp
WANTLIB += m sqlite3 uuid

MODULES =		lang/python
MODPY_RUNDEP =		No
# don't override the cmake MODULE
CONFIGURE_STYLE =	cmake

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS =		graphics/orthanc/server \
			devel/gtest

RUN_DEPENDS =		graphics/orthanc/server
LIB_DEPENDS =		databases/sqlite3 \
			devel/boost \
			devel/jsoncpp \
			sysutils/e2fsprogs

TEST_DEPENDS =		devel/gtest

CONFIGURE_ARGS =	-DALLOW_DOWNLOADS=OFF \
			-DUSE_SYSTEM_UUID=ON

CONFIGURE_ARGS +=	-DORTHANC_FRAMEWORK_ROOT="${WRKSRC}/ThirdPartyDownloads/Orthanc-${FRAMEWORK_VERSION}/OrthancFramework/Sources" \
			-DORTHANC_FRAMEWORK_SOURCE=path

post-extract:
	mkdir ${WRKSRC}/ThirdPartyDownloads/
.for p in ${PLUGIN_3RDPARTY}
	cp ${DISTDIR}/$p ${WRKSRC}/ThirdPartyDownloads/
.endfor
	tar -xzf ${DISTDIR}/${FRAMEWORK_DISTFILE} -C ${WRKSRC}/ThirdPartyDownloads/

do-test:
	cd ${WRKBUILD} && ./UnitTests

.include <bsd.port.mk>
