COMMENT =		RESTful DICOM server for healthcare and medical research

DISTNAME =		Orthanc-1.11.1
PKGNAME =		${DISTNAME:L}
REVISION =		8

HOMEPAGE =		https://www.orthanc-server.com/

SITES =			https://orthanc.uclouvain.be/downloads/sources/orthanc/

WANTLIB += ${COMPILER_LIBCXX} boost_atomic-mt boost_chrono-mt
WANTLIB += boost_date_time-mt boost_filesystem-mt boost_iostreams-mt
WANTLIB += boost_locale-mt boost_regex-mt boost_system-mt boost_thread-mt
WANTLIB += c civetweb cmr crypto curl dcmdata dcmdsig dcmect dcmfg
WANTLIB += dcmimage dcmimgle dcmiod dcmjpeg dcmjpls dcmnet dcmpmap
WANTLIB += dcmpstat dcmqrdb dcmrt dcmseg dcmsr dcmtkcharls dcmtls
WANTLIB += dcmtract dcmwlm i2d iconv ijg12 ijg16 ijg8 jpeg jsoncpp
WANTLIB += lua5.1 m oflog ofstd png pugixml sqlite3 ssl uuid z

# c++11
COMPILER =		base-clang ports-clang ports-gcc

MODULES =		devel/cmake \
			lang/lua \
			lang/python

MODPY_RUNDEP =		No

BUILD_DEPENDS =		devel/doxygen>=1.10.0 \
			devel/gtest

LIB_DEPENDS =		databases/sqlite3 \
			devel/boost \
			devel/jsoncpp \
			graphics/dcmtk \
			net/curl \
			sysutils/e2fsprogs \
			textproc/pugixml \
			www/civetweb

TEST_DEPENDS =		devel/gtest

CONFIGURE_ARGS +=	-DUSE_SYSTEM_BOOST=ON \
			-DUSE_SYSTEM_CIVETWEB=ON \
			-DUSE_SYSTEM_DCMTK=ON \
			-DUSE_SYSTEM_GOOGLE_TEST=ON \
			-DUSE_SYSTEM_JSONCPP=ON \
			-DUSE_SYSTEM_LIBICONV=ON \
			-DUSE_SYSTEM_LIBJPEG=ON \
			-DUSE_SYSTEM_LIBPNG=ON \
			-DUSE_SYSTEM_LUA=ON \
			-DUSE_SYSTEM_OPENSSL=ON \
			-DUSE_SYSTEM_PUGIXML=ON \
			-DUSE_SYSTEM_SQLITE=ON \
			-DUSE_SYSTEM_UUID=ON \
			-DUSE_SYSTEM_ZLIB=ON

CONFIGURE_ARGS +=	-DBUILD_CONNECTIVITY_CHECKS=OFF \
			-DBUILD_DELAYED_DELETION=OFF \
			-DUNIT_TESTS_WITH_HTTP_CONNEXIONS=OFF


WRKSRC =		${WRKDIR}/${DISTNAME}/OrthancServer

pre-configure:
	sed -i 's,share/orthanc/plugins,libexec/orthanc/plugins,g' \
		${WRKSRC}/CMakeLists.txt \
		${WRKSRC}/Plugins/Samples/ModalityWorklists/CMakeLists.txt \
		${WRKSRC}/Plugins/Samples/ServeFolders/CMakeLists.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/orthanc/
	${SUBST_CMD} -c ${WRKSRC}/Resources/Configuration.json \
		${PREFIX}/share/examples/orthanc/Configuration.json

do-test:
	cd ${WRKBUILD} && ./UnitTests

.include <bsd.port.mk>
