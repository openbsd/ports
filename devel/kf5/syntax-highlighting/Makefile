# $OpenBSD: Makefile,v 1.3 2017/07/27 09:34:38 sthen Exp $

COMMENT =		highlighting engine for structured text and code
DISTNAME =		syntax-highlighting-${VERSION}
REVISION =		0

SHARED_LIBS =		KF5SyntaxHighlighting	1.0 # 5.29

WANTLIB =		${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network c m

BUILD_DEPENDS =		x11/qt5/qtxmlpatterns

CONFIGURE_ARGS =	-DCMAKE_POLICY_DEFAULT_CMP0058=OLD

.include <bsd.port.mk>
