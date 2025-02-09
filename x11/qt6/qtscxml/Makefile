QT6NAME =	QtScxml
COMMENT =	create state machines from SCXML files
PKGSPEC =	qt6-qtscxml-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6Scxml                  3.0 # 6.7
SHARED_LIBS +=  Qt6ScxmlQml               2.0 # 6.7
SHARED_LIBS +=  Qt6StateMachine           3.0 # 6.7
SHARED_LIBS +=  Qt6StateMachineQml        1.0 # 6.7

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6Qml
WANTLIB += c m xkbcommon

LIB_DEPENDS =	x11/qt6/qtdeclarative \
		x11/xkbcommon

.include <bsd.port.mk>
