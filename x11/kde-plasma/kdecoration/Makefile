# $OpenBSD: Makefile,v 1.3 2022/02/13 08:34:52 rsadowski Exp $

COMMENT =	plugin-based library to create KDE window decorations
DISTNAME =	kdecoration-${VERSION}

SHARED_LIBS +=  kdecorations2         0.2 # 5.12.0
SHARED_LIBS +=  kdecorations2private  0.0 # 5.12.0

WANTLIB += ${COMPILER_LIBCXX} KF5CoreAddons KF5I18n Qt5Core Qt5Gui
WANTLIB += m

MODKDE5_TRANSLATIONS = Yes

LIB_DEPENDS =	devel/kf5/ki18n \
		devel/kf5/kcoreaddons

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
