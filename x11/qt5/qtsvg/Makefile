QT5NAME =		QtSVG
COMMENT-main =		SVG support for Qt5

KDE_COMMIT =		26fdcaff0d3d6bf6f5c847e833006577a6e8ba7d
KDE_VERSION =		5

DPB_PROPERTIES =	parallel

SHARED_LIBS =   Qt5Svg                    3.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Widgets m z

MULTI_PACKAGES =	-main -examples

FLAVORS =		debug

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
