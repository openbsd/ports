COMMENT =	KDE plugins for QImage supporting extra file formats
DISTNAME =	kimageformats-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} Iex-3_1 IlmThread-3_1
WANTLIB += Imath-3_1 KF5Archive Qt5Core Qt5Gui Qt5PrintSupport
WANTLIB += Qt5Widgets avif m OpenEXR-3_1 z

LIB_DEPENDS =	devel/kf5/karchive>=${MODKF5_VERSION} \
		graphics/libavif \
		graphics/openexr

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
