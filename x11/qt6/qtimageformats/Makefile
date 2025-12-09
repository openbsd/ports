QT6NAME =	QtImageFormats
COMMENT =	Qt6 additional image formats
PKGSPEC =	qt6-qtimageformats-${QT6_PKGSPEC}

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui c jasper jpeg
WANTLIB += m mng tiff webp webpdemux webpmux

LIB_DEPENDS =	graphics/jasper \
		graphics/tiff \
		graphics/jpeg \
		graphics/libmng \
		graphics/libwebp

.include <bsd.port.mk>
