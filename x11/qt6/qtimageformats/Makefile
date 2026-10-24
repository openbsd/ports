QT6NAME =	QtImageFormats
COMMENT =	Qt6 additional image formats
PKGSPEC =	qt6-qtimageformats-${QT6_PKGSPEC}

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui m sharpyuv tiff
WANTLIB += webp webpdemux webpmux

LIB_DEPENDS =	graphics/tiff \
		graphics/libwebp

.include <bsd.port.mk>
