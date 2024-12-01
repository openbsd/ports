QT5NAME =		QtSVG
COMMENT-main =		SVG support for Qt5

KDE_COMMIT =		9c3d40626ddfccc87886966a59e5cd6b1b5ce739
KDE_VERSION =		5

DPB_PROPERTIES =	parallel

SHARED_LIBS =   Qt5Svg                    3.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Widgets m z

MULTI_PACKAGES =	-main -examples

FLAVORS =		debug

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
