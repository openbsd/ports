QT6NAME =	QtLanguageServer
COMMENT =	Language server implementation for Qt6
PKGSPEC =	qt6-qtlanguageserver-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6JsonRpc                1.0 # 6.4
SHARED_LIBS +=  Qt6LanguageServer         1.0 # 6.4

WANTLIB += ${COMPILER_LIBCXX} Qt6Core c m

.include <bsd.port.mk>
