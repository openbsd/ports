# $OpenBSD: Makefile,v 1.16 2021/02/14 06:22:32 rsadowski Exp $

COMMENT =		highlighting engine for structured text and code
DISTNAME =		syntax-highlighting-${VERSION}

SHARED_LIBS =		KF5SyntaxHighlighting	8.3

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network c m

MODULES +=	perl

BUILD_DEPENDS =	x11/qt5/qtxmlpatterns


.include <bsd.port.mk>
