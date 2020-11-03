# $OpenBSD: Makefile,v 1.14 2020/11/03 16:12:09 rsadowski Exp $

COMMENT =		highlighting engine for structured text and code
DISTNAME =		syntax-highlighting-${VERSION}

SHARED_LIBS =		KF5SyntaxHighlighting	8.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network c m

MODULES +=	perl

BUILD_DEPENDS =	x11/qt5/qtxmlpatterns


.include <bsd.port.mk>
