QT5NAME =		QtImageFormats
COMMENT =		support for additional image formats in Qt5

KDE_COMMIT =		c91e4c63c1eaf1e23806d9df10e3d5a9ae353c1d
KDE_VERSION =		2

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
