# $OpenBSD: Makefile,v 1.1.1.1 2018/09/02 14:27:23 rsadowski Exp $

COMMENT =	KDE File Manager
DISTNAME =	dolphin-${VERSION}
CATEGORIES =	x11

SHARED_LIBS +=  dolphinprivate            0.0 # 5.0
SHARED_LIBS +=  dolphinvcs                0.0 # 5.0

KDE5 =		Yes

MODULES =	multimedia/phonon

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		devel/kf5/kdoctools \
		x11/gtk+3,-guic

LIB_DEPENDS =	devel/kf5/kactivities \
		devel/kf5/attica \
		devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/kguiaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/kcmutils \
		devel/kf5/kdelibs4support \
		devel/kf5/kio \
		devel/kf5/knewstuff \
		devel/kf5/knotifications \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/solid \
		devel/kf5/sonnet \
		devel/kf5/baloo \
		devel/kf5/kfilemetadata \
		devel/kf5/ktextwidgets \
		devel/kf5/kunitconversion \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
