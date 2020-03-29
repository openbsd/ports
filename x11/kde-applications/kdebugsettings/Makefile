# $OpenBSD: Makefile,v 1.4 2020/03/29 16:44:08 rsadowski Exp $

COMMENT =	application to edit QLoggingCategory
DISTNAME =	kdebugsettings-${VERSION}
CATEGORIES =	x11 sysutils
REVISION =	0

HOMEPAGE =	https://kde.org/applications/development/org.kde.kdebugsettings

WANTLIB += ${COMPILER_LIBCXX} KF5Completion KF5ConfigCore KF5CoreAddons
WANTLIB += KF5DBusAddons KF5I18n KF5ItemViews KF5WidgetsAddons
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Widgets c m

MODULES +=	x11/kde-applications

MODKDE5_TRANSLATIONS = yes
MODKDE5_DESKTOP_FILE = yes

BUILD_DEPENDS =	devel/kf5/kconfigwidgets

LIB_DEPENDS =	devel/kf5/kcompletion \
		devel/kf5/kcoreaddons \
		devel/kf5/kconfig \
		devel/kf5/kdbusaddons \
		devel/kf5/ki18n \
		devel/kf5/kitemviews \
		devel/kf5/kwidgetsaddons

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
