# $OpenBSD: Makefile,v 1.14 2021/12/19 10:51:00 rsadowski Exp $

COMMENT =	intercepting and handling application crashes in KDE
DISTNAME =	kcrash-${VERSION}

SHARED_LIBS =	KF5Crash	6.0

WANTLIB += ${COMPILER_LIBCXX} KF5CoreAddons KF5WindowSystem Qt5Core
WANTLIB += Qt5Gui Qt5Widgets Qt5X11Extras X11 m

LIB_DEPENDS =	devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
		devel/kf5/kwindowsystem>=${MODKF5_VERSION} \
		x11/qt5/qtx11extras

TEST_IS_INTERACTIVE =	X11
# TODO: The following tests FAILED:
# 2 - kcrashtest (Failed)

.include <bsd.port.mk>
