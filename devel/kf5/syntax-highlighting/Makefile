# $OpenBSD: Makefile,v 1.5 2018/01/09 21:10:40 rsadowski Exp $

COMMENT =		highlighting engine for structured text and code
DISTNAME =		syntax-highlighting-${VERSION}

SHARED_LIBS =		KF5SyntaxHighlighting	3.0 # 5.29

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network c m

BUILD_DEPENDS =		x11/qt5/qtxmlpatterns

.include <bsd.port.mk>
