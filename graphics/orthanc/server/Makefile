# $OpenBSD: Makefile,v 1.10 2019/10/02 18:29:33 jasper Exp $

COMMENT =		RESTful DICOM server for healthcare and medical research

DISTNAME =		Orthanc-1.3.0
PKGNAME =		${DISTNAME:L}
REVISION =		5

HOMEPAGE =		https://www.orthanc-server.com/

DISTFILES =		${DISTNAME}${EXTRACT_SUFX}:0 \
			mongoose-3.8.tgz:1

MASTER_SITES0 =		https://www.orthanc-server.com/downloads/get.php?path=/orthanc/
MASTER_SITES1 =		https://www.montefiore.ulg.ac.be/~jodogne/Orthanc/ThirdPartyDownloads/

WANTLIB += ${COMPILER_LIBCXX} boost_atomic-mt boost_chrono-mt
WANTLIB += boost_date_time-mt boost_filesystem-mt boost_locale-mt
WANTLIB += boost_regex-mt boost_system-mt boost_thread-mt c charls
WANTLIB += charset cmr crypto curl dcmdata dcmdsig dcmfg dcmimage
WANTLIB += dcmimgle dcmiod dcmjpeg dcmjpls dcmnet dcmpmap dcmpstat
WANTLIB += dcmqrdb dcmrt dcmseg dcmsr dcmtls dcmtract dcmwlm gtest
WANTLIB += i2d iconv ijg12 ijg16 ijg8 jpeg jsoncpp lua5.1 m oflog
WANTLIB += ofstd png pugixml sqlite3 ssl tiff uuid xml2 z

# c++11
COMPILER =		base-clang ports-clang ports-gcc

MODULES =		devel/cmake \
			lang/lua \
			lang/python

MODPY_RUNDEP =		No

BUILD_DEPENDS =		devel/doxygen

LIB_DEPENDS =		databases/sqlite3 \
			devel/boost \
			devel/gtest \
			devel/jsoncpp \
			graphics/dcmtk>=3.6.2 \
			net/curl \
			sysutils/e2fsprogs \
			textproc/pugixml

CONFIGURE_ARGS +=	-DUSE_SYSTEM_MONGOOSE=Off \
			-DORTHANC_BUILD_UNIT_TESTS=Off

# override these as otherwise the tests from Compiler.cmake won't pick them up yet
CONFIGURE_ARGS +=	-DCMAKE_C_FLAGS="-I${LOCALBASE}/include -pthread" \
			-DCMAKE_EXE_LINKER_FLAGS="-L${LOCALBASE}/lib -luuid" \
			-DCMAKE_SHARED_LINKER_FLAGS="-L${LOCALBASE}/lib" \

# CMAKE_COMPILER_IS_GNUCXX isn't set for clang as we invoke the compiler
# as 'c++' and not 'clang++' (ref: CMakeDetermineCXXCompiler.cmake)
CONFIGURE_ARGS +=	-DCMAKE_COMPILER_IS_GNUCXX=Yes

SUBST_VARS +=		VARBASE

# Drop mongoose 3.8 inplace:
# https://www.mail-archive.com/mongoose-users@googlegroups.com/msg00625.html
post-extract:
	mkdir ${WRKSRC}/ThirdPartyDownloads/
	cp ${DISTDIR}/mongoose-3.8.tgz ${WRKSRC}/ThirdPartyDownloads/

pre-configure:
	sed -i 's,share/orthanc/plugins,libexec/orthanc/plugins,g' \
		${WRKSRC}/CMakeLists.txt \
		${WRKSRC}/Plugins/Samples/ModalityWorklists/CMakeLists.txt \
		${WRKSRC}/Plugins/Samples/ServeFolders/CMakeLists.txt
	${SUBST_CMD} ${WRKSRC}/Resources/CMake/Compiler.cmake

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/orthanc/
	${SUBST_CMD} -c ${WRKSRC}/Resources/Configuration.json \
		${PREFIX}/share/examples/orthanc/Configuration.json

.include <bsd.port.mk>
