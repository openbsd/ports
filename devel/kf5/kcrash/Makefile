# $OpenBSD: Makefile,v 1.6 2017/10/26 07:53:22 rsadowski Exp $

COMMENT =	intercepting and handling application crashes in KDE
DISTNAME =	kcrash-${VERSION}

SHARED_LIBS =	KF5Crash	3.0

WANTLIB += ${COMPILER_LIBCXX} ICE KF5CoreAddons KF5WindowSystem
WANTLIB += Qt5Core Qt5Gui Qt5Widgets Qt5X11Extras SM X11 Xext
WANTLIB += m

LIB_DEPENDS =	devel/kf5/kcoreaddons \
		devel/kf5/kwindowsystem \
		x11/qt5/qtx11extras

# TODO: The following tests FAILED:
# 2 - kcrashtest (Failed)

.include <bsd.port.mk>
