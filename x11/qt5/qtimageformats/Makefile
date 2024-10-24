QT5NAME =		QtImageFormats
COMMENT =		support for additional image formats in Qt5

KDE_COMMIT =		9f658c2093e81d1dc3333e594cc1aa4b0990e221
KDE_VERSION =		4

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
