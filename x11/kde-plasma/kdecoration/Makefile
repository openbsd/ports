# $OpenBSD: Makefile,v 1.2 2021/10/14 18:06:59 rsadowski Exp $

COMMENT =	plugin-based library to create KDE window decorations
DISTNAME =	kdecoration-${VERSION}

SHARED_LIBS +=  kdecorations2         0.1 # 5.12.0
SHARED_LIBS +=  kdecorations2private  0.0 # 5.12.0

WANTLIB += ${COMPILER_LIBCXX} KF5I18n Qt5Core Qt5Gui m

MODKDE5_TRANSLATIONS = Yes

LIB_DEPENDS =	devel/kf5/ki18n

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
