QT6NAME =	QtScxml
COMMENT =	create state machines from SCXML files
PKGSPEC =	qt6-qtscxml-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6Scxml                  0.1 # 0.0
SHARED_LIBS +=  Qt6ScxmlQml               0.1 # 0.0
SHARED_LIBS +=  Qt6StateMachine           0.1 # 0.0
SHARED_LIBS +=  Qt6StateMachineQml        0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6Qml
WANTLIB += c m xkbcommon

LIB_DEPENDS =	x11/qt6/qtdeclarative

BUILD_DEPENDS =	graphics/vulkan-loader

.include <bsd.port.mk>
