# $OpenBSD: Makefile,v 1.1.1.1 2018/11/16 07:41:37 rsadowski Exp $

COMMENT =	galactic strategy game
DISTNAME =	konquest-${VERSION}
CATEGORIES =	games

HOMEPAGE =	https://www.kde.org/applications/games/konquest

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Crash
WANTLIB += KF5DBusAddons KF5GuiAddons KF5I18n KF5KDEGames KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick Qt5QuickWidgets Qt5Svg Qt5Widgets Qt5Xml c
WANTLIB += m

BUILD_DEPENDS +=devel/gettext-tools \
		x11/qt5/qtquickcontrols \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/kf5/kdoctools \
		x11/gtk+3,-guic \
		x11/qt5/qtquickcontrols \
		devel/desktop-file-utils

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/ki18n \
		devel/kf5/kcrash \
		devel/kf5/kconfig \
		devel/kf5/kdbusaddons \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kguiaddons \
		devel/kf5/kxmlgui \
		devel/kf5/kconfigwidgets \
		devel/kf5/kwidgetsaddons \
		x11/qt5/qtsvg \
		x11/qt5/qtdeclarative \
		x11/kde-applications/libkdegames

.include <bsd.port.mk>
