# compiling features/src/integral_image_normal.cpp takes too much RAM
ONLY_FOR_ARCHS =	${LP64_ARCHS}

COMMENT =		image and point cloud processing library

V =			1.14.1
PKGNAME =		pcl-${V}

DIST_TUPLE +=		github PointCloudLibrary pcl ${PKGNAME} .
DIST_TUPLE +=		github google googletest v1.15.2 ../gtest_dist

SHARED_LIBS +=		pcl_common		0.0 # 0.0
SHARED_LIBS +=  	pcl_features		0.0 # 0.0
SHARED_LIBS +=  	pcl_filters		0.0 # 0.0
SHARED_LIBS +=  	pcl_io			0.0 # 0.0
SHARED_LIBS +=  	pcl_io_ply		0.0 # 0.0
SHARED_LIBS +=  	pcl_kdtree		0.0 # 0.0
SHARED_LIBS +=  	pcl_keypoints		0.0 # 0.0
SHARED_LIBS +=  	pcl_ml			0.0 # 0.0
SHARED_LIBS +=  	pcl_octree		0.0 # 0.0
SHARED_LIBS +=  	pcl_recognition		0.0 # 0.0
SHARED_LIBS +=  	pcl_registration	0.0 # 0.0
SHARED_LIBS +=  	pcl_sample_consensus	0.0 # 0.0
SHARED_LIBS +=  	pcl_search		0.0 # 0.0
SHARED_LIBS +=  	pcl_segmentation	0.0 # 0.0
SHARED_LIBS +=  	pcl_stereo		0.0 # 0.0
SHARED_LIBS +=  	pcl_surface		0.0 # 0.0
SHARED_LIBS +=  	pcl_tracking		0.0 # 0.0

CATEGORIES =		graphics
HOMEPAGE =		https://pointclouds.org/
MAINTAINER =		Johannes Thyssen Tishman <ports@thyssentishman.com>

# BSD 3-clause
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} boost_filesystem-mt boost_iostreams-mt
WANTLIB += boost_regex-mt c flann_cpp lz4 m pcap png qhull_r usb-1.0
WANTLIB += z

COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake

PCLVER =		pcl-${V:R}
SUBST_VARS +=		PCLVER

BUILD_DEPENDS =		graphics/freeglut \
			graphics/glew \
			math/eigen3 \
			x11/xkbcommon

LIB_DEPENDS =		devel/boost \
			devel/libusb1 \
			graphics/png \
			math/flann \
			math/qhull

CONFIGURE_ARGS =	-DWITH_LIBUSB=ON \
			-DWITH_OPENGL=ON \
			-DWITH_PCAP=ON \
			-DWITH_PNG=ON \
			-DWITH_QHULL=ON \
			-DWITH_OPENMP=OFF \
			-DWITH_CUDA=OFF \
			-DWITH_VTK=OFF \
			-DWITH_OPENNI=OFF \
			-DWITH_OPENNI2=OFF \
			-DWITH_ENSENSO=OFF \
			-DWITH_DAVIDSDK=OFF \
			-DWITH_DSSDK=OFF \
			-DWITH_RSSDK=OFF \
			-DWITH_RSSDK2=OFF \
			-DWITH_QT=OFF \
			-DWITH_DOCS=OFF \
			-DBUILD_global_tests=ON

# GTest's source is needed for tests
GTEST_WRKSRC =		${WRKDIR}/gtest_dist/googletest
CONFIGURE_ARGS +=	-DGTEST_SRC_DIR=${GTEST_WRKSRC} \
			-DGTEST_INCLUDE_DIR=${GTEST_WRKSRC}/include

# Test #103 results are inconsistent
# See https://github.com/PointCloudLibrary/pcl/issues/6178
do-test:
	${MODCMAKE_TEST_TARGET} --test-dir ${WRKBUILD}/test

.include <bsd.port.mk>
