# $OpenBSD: Makefile,v 1.12 2020/03/23 18:01:06 rsadowski Exp $

COMMENT =	intercepting and handling application crashes in KDE
DISTNAME =	kcrash-${VERSION}

SHARED_LIBS =	KF5Crash	5.0

WANTLIB += ${COMPILER_LIBCXX} ICE KF5CoreAddons KF5WindowSystem
WANTLIB += Qt5Core Qt5Gui Qt5Widgets Qt5X11Extras SM X11 Xext
WANTLIB += m

LIB_DEPENDS =	devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
		devel/kf5/kwindowsystem>=${MODKF5_VERSION} \
		x11/qt5/qtx11extras

TEST_IS_INTERACTIVE =	X11
# TODO: The following tests FAILED:
# 2 - kcrashtest (Failed)

.include <bsd.port.mk>
