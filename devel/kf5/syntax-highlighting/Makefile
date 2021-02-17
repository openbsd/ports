# $OpenBSD: Makefile,v 1.17 2021/02/17 15:56:07 rsadowski Exp $

COMMENT =		highlighting engine for structured text and code
VERSION =		5.79.1
DISTNAME =		syntax-highlighting-${VERSION}

SHARED_LIBS =		KF5SyntaxHighlighting	8.3

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network c m

MODULES +=	perl

BUILD_DEPENDS =	x11/qt5/qtxmlpatterns


.include <bsd.port.mk>
