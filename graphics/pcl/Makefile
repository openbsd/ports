# compiling features/src/integral_image_normal.cpp takes too much RAM
ONLY_FOR_ARCHS =	${LP64_ARCHS}

COMMENT =		image and point cloud processing library

V =			1.15.1
PKGNAME =		pcl-${V}

DIST_TUPLE +=		github PointCloudLibrary pcl ${PKGNAME} .
DIST_TUPLE +=		github google googletest v1.15.2 ../gtest_dist

.for LIB in pcl_common pcl_features pcl_filters pcl_io pcl_io_ply pcl_kdtree \
        pcl_keypoints pcl_ml pcl_octree pcl_recognition pcl_registration \
        pcl_sample_consensus pcl_search pcl_segmentation pcl_stereo \
        pcl_surface pcl_tracking
SHARED_LIBS += ${LIB} 2.0 # 0.0
.endfor

CATEGORIES =		graphics
HOMEPAGE =		https://pointclouds.org/
MAINTAINER =		Johannes Thyssen Tishman <jtt@openbsd.org>

# BSD 3-clause
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} boost_atomic-mt boost_filesystem-mt
WANTLIB += boost_iostreams-mt boost_random-mt boost_regex-mt boost_system-mt
WANTLIB += c flann_cpp lz4 m pcap png qhull_r usb-1.0 z

COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake

PCLVER =		pcl-${V:R}
SUBST_VARS +=		PCLVER

BUILD_DEPENDS =		math/eigen3 \
			devel/cjson \
			x11/xkbcommon

LIB_DEPENDS =		devel/boost \
			devel/libusb1 \
			graphics/png \
			math/flann \
			math/qhull

# OpenGL, freeglut and GLEW are only needed by subsystems that are either
# disabled by default (apps, simulation) or due to an external dependency
# (visualization --> WITH_VTK=OFF).
# https://github.com/PointCloudLibrary/pcl/issues/2641
CONFIGURE_ARGS =	-DWITH_LIBUSB=ON \
			-DWITH_PCAP=ON \
			-DWITH_PNG=ON \
			-DWITH_QHULL=ON \
			-DWITH_OPENGL=OFF \
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
			-DBUILD_global_tests=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_nanoflann=ON

# GTest's source is needed for tests
GTEST_WRKSRC =		${WRKDIR}/gtest_dist/googletest
CONFIGURE_ARGS +=	-DGTEST_SRC_DIR=${GTEST_WRKSRC} \
			-DGTEST_INCLUDE_DIR=${GTEST_WRKSRC}/include

do-test:
	${MODCMAKE_TEST_TARGET} --test-dir ${WRKBUILD}/test

.include <bsd.port.mk>
