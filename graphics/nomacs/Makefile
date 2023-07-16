COMMENT =	small and fast Qt image viewer

GH_ACCOUNT =	nomacs
GH_PROJECT =	nomacs
GH_TAGNAME =	3.17.2282

CATEGORIES =	graphics

HOMEPAGE =	https://nomacs.org

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

SHARED_LIBS +=  nomacsCore                6.0 # 3.3

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Concurrent Qt5Core Qt5Gui Qt5Network
WANTLIB += Qt5PrintSupport Qt5Svg Qt5Widgets c exiv2 lcms2 m opencv_core
WANTLIB += opencv_imgproc quazip1-qt5 raw tiff z

MODULES =		devel/cmake \
			x11/qt5

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic \
			x11/qt5/qtimageformats

LIB_DEPENDS =		archivers/quazip>=1.3 \
			graphics/exiv2 \
			graphics/lcms2 \
			graphics/libraw \
			graphics/opencv \
			graphics/tiff \
			x11/qt5/qtsvg

CONFIGURE_ARGS =	-DUSE_SYSTEM_QUAZIP=ON \
			-DENABLE_TRANSLATIONS=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Python=ON

WRKDIST =		${WRKDIR}/${PKGNAME}/ImageLounge

NO_TEST =		Yes

CXXFLAGS +=		-I${LOCALBASE}/include/QuaZip-Qt5/

pre-configure:
	find ${WRKSRC} -type f -name "*.cpp" -exec sed -i \
	's,<quazip5/JlCompress.h>,<quazip/JlCompress.h>,' {} \;

.include <bsd.port.mk>
