# $OpenBSD: Makefile,v 1.4 2017/07/27 09:34:37 sthen Exp $

COMMENT =	intercepting and handling application crashes in KDE
DISTNAME =	kcrash-${VERSION}
REVISION =	0

SHARED_LIBS =	KF5Crash	2.0

WANTLIB =  ICE KF5CoreAddons KF5WindowSystem ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets
WANTLIB += Qt5X11Extras SM X11 Xext m

LIB_DEPENDS =	devel/kf5/kcoreaddons \
		devel/kf5/kwindowsystem \
		x11/qt5/qtx11extras

# TODO: The following tests FAILED:
# 2 - kcrashtest (Failed)

.include <bsd.port.mk>
