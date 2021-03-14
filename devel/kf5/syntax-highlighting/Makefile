# $OpenBSD: Makefile,v 1.18 2021/03/14 14:35:07 rsadowski Exp $

COMMENT =		highlighting engine for structured text and code
DISTNAME =		syntax-highlighting-${VERSION}

SHARED_LIBS =		KF5SyntaxHighlighting	8.3

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network c m

MODULES +=	perl

BUILD_DEPENDS =	x11/qt5/qtxmlpatterns


.include <bsd.port.mk>
