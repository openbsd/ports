COMMENT =	KDE plugins for QImage supporting extra file formats
DISTNAME =	kimageformats-${VERSION}
REVISION =	1

WANTLIB += ${COMPILER_LIBCXX} GL Iex-3_4 IlmThread-3_4 Imath-3_2
WANTLIB += KF6Archive OpenEXR-3_4 OpenEXRCore-3_4 Qt6Core Qt6Gui
WANTLIB += Qt6PrintSupport Qt6Widgets avif jxl jxl_cms jxl_threads
WANTLIB += m openjp2 raw

LIB_DEPENDS =	devel/kf6/karchive>=${MODKF6_VERSION} \
		graphics/libavif \
		graphics/libjxl \
		graphics/libraw \
		graphics/openjp2 \
		graphics/openexr \
		math/imath

TEST_IS_INTERACTIVE =	X11

CXXFLAGS=	-I${LOCALBASE}/include

.include <bsd.port.mk>
