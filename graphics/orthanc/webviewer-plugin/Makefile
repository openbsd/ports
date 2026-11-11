BROKEN =		needs adapting for newer orthanc, or replacing with Stone webviewer
# /usr/obj/ports/orthanc-plugin-webviewer-2.10/OrthancWebViewer-2.10/Plugin/Cache/CacheManager.cpp:471:26: error: no member named 'Read' in 'Orthanc::FilesystemStorage'
#   471 |         pimpl_->storage_.Read(uuid, Orthanc::FileContentType_Unknown));
#       |         ~~~~~~~~~~~~~~~~ ^

COMMENT =		web viewer plugin for Orthanc

VERSION =		2.10
PLUGIN =		WebViewer

DISTNAME =		Orthanc${PLUGIN}-${VERSION}
EXTRACT_ONLY =		${DISTNAME}${EXTRACT_SUFX}

DISTFILES.3rdparty +=	cornerstone-0.11.0.zip \
			jquery-ui-1.11.3.zip \
			js-url-1.8.6.zip \
			jsPanel-2.3.3-fixed.zip \
			pako-0.2.5.zip
SITES.3rdparty =	https://orthanc.uclouvain.be/downloads/third-party-downloads/web-viewer/

WANTLIB += ${COMPILER_LIBCXX} boost_atomic-mt boost_chrono-mt
WANTLIB += boost_date_time-mt boost_filesystem-mt boost_iostreams-mt
WANTLIB += boost_regex-mt boost_thread-mt jsoncpp
WANTLIB += m sqlite3 uuid

COMPILER =		base-clang ports-gcc

MODCMAKE_POLICY_VERSION_OVERRIDE = Yes

BUILD_DEPENDS =		graphics/orthanc/server:patch \
			graphics/orthanc/server \
			devel/gtest \
			lang/python/3

RUN_DEPENDS =		graphics/orthanc/server
LIB_DEPENDS =		databases/sqlite3 \
			devel/boost \
			devel/jsoncpp \
			sysutils/e2fsprogs

TEST_DEPENDS =		devel/gtest

CONFIGURE_ARGS =	-DUSE_SYSTEM_UUID=ON

post-extract:
	${INSTALL_DATA_DIR} ${WRKSRC}/ThirdPartyDownloads
.for p in ${DISTFILES.3rdparty}
	cp ${FULLDISTDIR}/$p ${WRKSRC}/ThirdPartyDownloads/
.endfor

do-test:
	cd ${WRKBUILD} && ./UnitTests

.include <bsd.port.mk>
