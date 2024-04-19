UNLINKED = kf6
COMMENT =	highlighting engine for structured text and code
DISTNAME =	syntax-highlighting-${VERSION}

SHARED_LIBS +=  KF6SyntaxHighlighting     0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlModels Qt6Quick c m

MODULES +=	perl

BUILD_DEPENDS =	textproc/xerces-c

LIB_DEPENDS =	x11/qt6/qtdeclarative

.include <bsd.port.mk>
