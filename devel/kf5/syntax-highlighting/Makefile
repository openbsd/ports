# $OpenBSD: Makefile,v 1.2 2017/06/07 17:03:39 rsadowski Exp $

COMMENT =		highlighting engine for structured text and code
DISTNAME =		syntax-highlighting-${VERSION}

SHARED_LIBS =		KF5SyntaxHighlighting	1.0 # 5.29

WANTLIB =		Qt5Core Qt5Gui Qt5Network c m

BUILD_DEPENDS =		x11/qt5/qtxmlpatterns

CONFIGURE_ARGS =	-DCMAKE_POLICY_DEFAULT_CMP0058=OLD

.include <bsd.port.mk>
