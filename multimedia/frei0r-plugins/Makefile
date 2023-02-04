COMMENT =	minimalistic plugin API for video effects
CATEGORIES =	graphics multimedia

DISTNAME =	frei0r-plugins-1.8.0
MASTER_SITES =	https://files.dyne.org/frei0r/releases/

HOMEPAGE =	https://frei0r.dyne.org/

MAINTAINER =	Raphael Graf <r@undefined.ch>

# GPLv2+
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} cairo m opencv_calib3d opencv_core
WANTLIB += opencv_dnn opencv_features2d opencv_flann opencv_highgui
WANTLIB += opencv_imgcodecs opencv_imgproc opencv_ml opencv_objdetect
WANTLIB += opencv_photo opencv_stitching opencv_video opencv_videoio

LIB_DEPENDS =	graphics/cairo \
		graphics/opencv

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

NO_TEST =	Yes

.include <bsd.port.mk>
