QT5NAME =		QtSVG
COMMENT-main =		SVG support for Qt5

KDE_COMMIT =		5b1b4a99d6bc98c42a11b7a3f6c9f0b0f9e56f34
KDE_VERSION =		6

DPB_PROPERTIES =	parallel

SHARED_LIBS =   Qt5Svg                    3.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Widgets m z

MULTI_PACKAGES =	-main -examples

FLAVORS =		debug

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
