# $OpenBSD: Makefile,v 1.12 2020/03/23 18:01:12 rsadowski Exp $

COMMENT =		highlighting engine for structured text and code
DISTNAME =		syntax-highlighting-${VERSION}

SHARED_LIBS =		KF5SyntaxHighlighting	6.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network c m

MODULES +=	perl

BUILD_DEPENDS =	x11/qt5/qtxmlpatterns


.include <bsd.port.mk>
