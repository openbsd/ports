QT5NAME =		QtScxml
COMMENT-main =		create state machines from SCXML files

KDE_COMMIT =		57491f554bc53bd020978b5744437b7ac7e56a27
KDE_VERSION =		0

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5Scxml                1.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Qml c m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
