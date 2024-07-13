COMMENT =	small and fast Qt image viewer

GH_ACCOUNT =	nomacs
GH_PROJECT =	nomacs
GH_TAGNAME =	3.19.0

CATEGORIES =	graphics

HOMEPAGE =	https://nomacs.org

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

SHARED_LIBS +=  nomacsCore                7.0

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6Core5Compat
WANTLIB += Qt6Gui Qt6Network Qt6PrintSupport Qt6Svg Qt6Widgets
WANTLIB += bz2 c exiv2 lcms2 m opencv_core opencv_imgproc quazip1-qt6
WANTLIB += raw tiff z

MODULES =		devel/cmake \
			x11/qt6

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic \
			x11/qt6/qtimageformats

LIB_DEPENDS =		archivers/quazip,qt6 \
			graphics/exiv2 \
			graphics/lcms2 \
			graphics/libraw \
			graphics/opencv \
			graphics/tiff \
			x11/qt6/qtsvg

CONFIGURE_ARGS =	-DUSE_SYSTEM_QUAZIP=ON \
			-DENABLE_QUAZIP=ON \
			-DENABLE_TRANSLATIONS=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Python=ON

CONFIGURE_ARGS +=	-DQT_VERSION_MAJOR=6

WRKDIST =		${WRKDIR}/${PKGNAME}/ImageLounge

NO_TEST =		Yes

CXXFLAGS +=		-I${LOCALBASE}/include/QuaZip-qt6/

.include <bsd.port.mk>
