QT5NAME =		QtImageFormats
COMMENT =		support for additional image formats in Qt5

KDE_COMMIT =		7b25a0435edc2602f8999bd216c4bec711ffe09e
KDE_VERSION =		3

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
