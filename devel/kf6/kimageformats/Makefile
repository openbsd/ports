COMMENT =	KDE plugins for QImage supporting extra file formats
DISTNAME =	kimageformats-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} GL Iex-3_2 IlmThread-3_2 Imath-3_1
WANTLIB += KF6Archive OpenEXR-3_2 OpenEXRCore-3_2 Qt6Core Qt6Gui
WANTLIB += Qt6PrintSupport Qt6Widgets avif jxl jxl_threads m raw

LIB_DEPENDS =	devel/kf6/karchive>=${MODKF6_VERSION} \
		graphics/libavif \
		graphics/libjxl \
		graphics/libraw \
		graphics/openexr

TEST_IS_INTERACTIVE =	X11

CXXFLAGS=	-I${LOCALBASE}/include

.include <bsd.port.mk>
