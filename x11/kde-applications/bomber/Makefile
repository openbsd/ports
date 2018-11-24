# $OpenBSD: Makefile,v 1.2 2018/11/24 09:15:25 rsadowski Exp $

COMMENT =	arcade bombing game
DISTNAME =	bomber-${VERSION}
CATEGORIES =	games
REVISION =	0

HOMEPAGE =	https://www.kde.org/applications/education/bomber/

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Crash
WANTLIB += KF5DBusAddons KF5I18n KF5KDEGames KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick Qt5QuickWidgets Qt5Widgets Qt5Xml c m


BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdbusaddons \
		devel/kf5/kdoctools \
		devel/kf5/kcrash \
		x11/qt5/qtquickcontrols \
		x11/qt5/qtdeclarative

RUN_DEPENDS =	devel/kf5/kdoctools \
		devel/kf5/kdbusaddons \
		devel/kf5/kcrash \
		x11/gtk+3,-guic \
		x11/qt5/qtquickcontrols \
		x11/qt5/qtdeclarative \
		devel/desktop-file-utils

LIB_DEPENDS =	devel/kf5/ki18n \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kxmlgui \
		x11/kde-applications/libkdegames



.include <bsd.port.mk>
