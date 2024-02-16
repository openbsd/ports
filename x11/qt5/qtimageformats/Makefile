QT5NAME =		QtImageFormats
COMMENT =		support for additional image formats in Qt5

KDE_COMMIT =		142040e8a652e708ff6e004361f6bcfe85fefdf9
KDE_VERSION =		10

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui jasper m mng tiff
WANTLIB += webp webpdemux webpmux

LIB_DEPENDS =		graphics/jasper \
			graphics/tiff \
			graphics/libmng \
			graphics/libwebp

FLAVORS =		debug

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
