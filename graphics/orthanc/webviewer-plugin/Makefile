# $OpenBSD: Makefile,v 1.7 2019/10/04 15:06:15 naddy Exp $

COMMENT =		web viewer plugin for Orthanc

VERSION =		2.3
PLUGIN =		WebViewer
REVISION =		2

PLUGIN_3RDPARTY =	cornerstone-0.11.0.zip \
			jquery-ui-1.11.3.zip \
			jsPanel-2.3.3-fixed.zip \
			pako-0.2.5.zip \
			js-url-1.8.6.zip

DISTNAME =		Orthanc${PLUGIN}-${VERSION}
DISTFILES =		${DISTNAME}${EXTRACT_SUFX}
EXTRACT_ONLY =		${DISTNAME}${EXTRACT_SUFX}
DISTFILES +=		${PLUGIN_3RDPARTY:C/$/:1/}

MASTER_SITES1 =		https://www.orthanc-server.com/downloads/third-party/WebViewer/

WANTLIB += ${COMPILER_LIBCXX} boost_atomic-mt boost_chrono-mt
WANTLIB += boost_date_time-mt boost_filesystem-mt boost_locale-mt
WANTLIB += boost_regex-mt boost_system-mt boost_thread-mt gdcmCommon
WANTLIB += gdcmDICT gdcmDSED gdcmIOD gdcmMSFF gtest jsoncpp m
WANTLIB += sqlite3

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS =		graphics/orthanc/server
RUN_DEPENDS =		graphics/orthanc/server
LIB_DEPENDS =		databases/sqlite3 \
			devel/boost \
			devel/gtest \
			devel/jsoncpp \
			graphics/gdcm

CONFIGURE_ARGS +=       -DCMAKE_C_FLAGS="-I${LOCALBASE}/include -pthread" \
                        -DCMAKE_CXX_FLAGS="-I${LOCALBASE}/include -pthread" \
                        -DCMAKE_EXE_LINKER_FLAGS="-L${LOCALBASE}/lib -luuid"

post-extract:
	mkdir ${WRKSRC}/ThirdPartyDownloads/
.for p in ${PLUGIN_3RDPARTY}
	cp ${DISTDIR}/$p ${WRKSRC}/ThirdPartyDownloads/
.endfor

.include <bsd.port.mk>
