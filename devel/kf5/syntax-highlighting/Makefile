# $OpenBSD: Makefile,v 1.19 2021/10/13 15:02:07 rsadowski Exp $

COMMENT =		highlighting engine for structured text and code
DISTNAME =		syntax-highlighting-${VERSION}

SHARED_LIBS =		KF5SyntaxHighlighting	8.4

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5QmlModels Qt5Quick c m

MODULES +=	perl

BUILD_DEPENDS =	x11/qt5/qtxmlpatterns

LIB_DEPENDS =	x11/qt5/qtdeclarative

.include <bsd.port.mk>
