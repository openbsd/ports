# $OpenBSD: Makefile,v 1.1.1.1 2018/11/16 07:01:11 rsadowski Exp $

COMMENT =	three-in-a-row game
DISTNAME =	kdiamond-${VERSION}
CATEGORIES =	games

HOMEPAGE =	https://www.kde.org/applications/games/kdiamond

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Crash
WANTLIB += KF5DBusAddons KF5I18n KF5KDEGames KF5Notifications
WANTLIB += KF5NotifyConfig KF5WidgetsAddons KF5XmlGui Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5QuickWidgets
WANTLIB += Qt5Widgets Qt5Xml c m

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools \
		devel/kf5/kcrash \
		x11/qt5/qtquickcontrols \
		x11/qt5/qtdeclarative

RUN_DEPENDS =	devel/kf5/kdoctools \
		x11/gtk+3,-guic \
		devel/kf5/kcrash \
		devel/desktop-file-utils \
		x11/qt5/qtquickcontrols \
		x11/qt5/qtdeclarative

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/ki18n \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kxmlgui \
		devel/kf5/kconfigwidgets \
		devel/kf5/knotifyconfig \
		x11/kde-applications/libkdegames

.include <bsd.port.mk>
