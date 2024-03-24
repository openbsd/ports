QT6NAME =	QtLanguageServer
COMMENT =	Language server implementation for Qt6
PKGSPEC =	qt6-qtlanguageserver-${QT6_PKGSPEC}
REVISION =	0

SHARED_LIBS +=  Qt6JsonRpc                2.0 # 6.5
SHARED_LIBS +=  Qt6LanguageServer         2.0 # 6.5

WANTLIB += ${COMPILER_LIBCXX} Qt6Core c m

MODQT6_DEPS =	No

LIB_DEPENDS =	x11/qt6/qtbase

.include <bsd.port.mk>
