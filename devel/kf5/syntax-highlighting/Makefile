# $OpenBSD: Makefile,v 1.1.1.1 2016/12/27 19:54:02 zhuk Exp $

COMMENT =		highlighting engine for structured text and code
DISTNAME =		syntax-highlighting-${VERSION}

SHARED_LIBS =		KF5SyntaxHighlighting	0.0 # 5.29

WANTLIB =		Qt5Core Qt5Gui Qt5Network c m

BUILD_DEPENDS =		x11/qt5/qtxmlpatterns

CONFIGURE_ARGS =	-DCMAKE_POLICY_DEFAULT_CMP0058=OLD

.include <bsd.port.mk>
