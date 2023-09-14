COMMENT =	KDE plugins for QImage supporting extra file formats
DISTNAME =	kimageformats-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} Iex-3_2 IlmThread-3_2 Imath-3_1
WANTLIB += KF5Archive OpenEXR-3_2 Qt5Core Qt5Gui Qt5PrintSupport
WANTLIB += Qt5Widgets avif jxl jxl_threads m raw OpenEXRCore-3_2

LIB_DEPENDS =	devel/kf5/karchive>=${MODKF5_VERSION} \
		graphics/libavif \
		graphics/libjxl \
		graphics/libraw \
		graphics/openexr

TEST_IS_INTERACTIVE =	X11

CXXFLAGS=	-I${LOCALBASE}/include

.include <bsd.port.mk>
