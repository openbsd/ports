# $OpenBSD: Makefile,v 1.8 2018/06/04 20:25:33 rsadowski Exp $

COMMENT =		highlighting engine for structured text and code
DISTNAME =		syntax-highlighting-${VERSION}

SHARED_LIBS =		KF5SyntaxHighlighting	5.1 # 5.29

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network c m

BUILD_DEPENDS =		x11/qt5/qtxmlpatterns

.include <bsd.port.mk>
