QT5NAME =		QtDataVis3D
COMMENT-main =		Qt5 3D data visualization components

KDE_COMMIT =		db75c351cd0c2b93016ca489ffb9db806e6fd6e9
KDE_VERSION =		3

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5DataVisualization    1.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5QmlModels Qt5Quick m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
