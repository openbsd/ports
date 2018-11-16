# $OpenBSD: Makefile,v 1.1.1.1 2018/11/16 06:36:53 rsadowski Exp $

COMMENT =	breakout-like game
DISTNAME =	kbreakout-${VERSION}
CATEGORIES =	games

HOMEPAGE =	https://www.kde.org/applications/games/kbreakout

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5DBusAddons KF5I18n KF5KDEGames KF5KDEGamesPrivate
WANTLIB += KF5WidgetsAddons KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5Quick Qt5QuickWidgets Qt5Widgets Qt5Xml c
WANTLIB += m

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools \
		devel/kf5/kcrash \
		x11/qt5/qtsvg \
		x11/qt5/qtquickcontrols \
		x11/qt5/qtdeclarative

RUN_DEPENDS =	devel/kf5/kdoctools \
		x11/gtk+3,-guic \
		devel/kf5/kcrash \
		devel/desktop-file-utils \
		x11/qt5/qtsvg \
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
		x11/kde-applications/libkdegames

.include <bsd.port.mk>
