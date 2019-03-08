# $OpenBSD: Makefile,v 1.10 2019/03/08 20:00:43 cwen Exp $

COMMENT =		highlighting engine for structured text and code
DISTNAME =		syntax-highlighting-${VERSION}
REVISION =		0

SHARED_LIBS =		KF5SyntaxHighlighting	5.2 # 5.29

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network c m

BUILD_DEPENDS =		x11/qt5/qtxmlpatterns

.include <bsd.port.mk>
