COMMENT = 	astronomical image processing tool

DISTNAME = 	siril-1.0.6
REVISION =	0

CATEGORIES = 	astro
HOMEPAGE = 	https://siril.org/

# GPLv3+/boost
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} atk-1.0 avcodec avformat avutil
WANTLIB += c cairo cairo-gobject cfitsio config execinfo
WANTLIB += exiv2 fftw3f gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gsl gslcblas gtk-3 harfbuzz heif intl jpeg
WANTLIB += json-glib-1.0 lcms2 m opencv_calib3d opencv_core opencv_dnn
WANTLIB += opencv_features2d opencv_flann opencv_highgui opencv_imgcodecs
WANTLIB += opencv_imgproc opencv_ml opencv_objdetect opencv_photo
WANTLIB += opencv_stitching opencv_video opencv_videoio pango-1.0
WANTLIB += pangocairo-1.0 png raw swresample swscale tiff
WANTLIB += rtprocess wcs kplot

SITES = 	https://free-astro.org/download/
EXTRACT_SUFX = .tar.bz2

# follow opencv to be safe
COMPILER = 	base-clang ports-gcc

MODULES = 	devel/meson

BUILD_DEPENDS = devel/gettext,-tools

LIB_DEPENDS = 	astro/wcslib \
		devel/gsl \
		devel/libconfig \
		devel/json-glib \
		graphics/exiv2 \
		graphics/kplot \
		graphics/libraw \
		graphics/librtprocess \
		graphics/opencv \
		math/cfitsio \
		math/fftw3,float \
		multimedia/libheif

CONFIGURE_ARGS += -Dopenmp=false

.include <bsd.port.mk>
