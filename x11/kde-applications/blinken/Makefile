# $OpenBSD: Makefile,v 1.1.1.1 2018/11/08 22:30:58 rsadowski Exp $

COMMENT =	memory enhancement game
DISTNAME =	blinken-${VERSION}
CATEGORIES =	games

HOMEPAGE =	https://www.kde.org/applications/education/blinken/

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Crash
WANTLIB += KF5DBusAddons KF5GuiAddons KF5I18n KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Svg Qt5Widgets
WANTLIB += Qt5Xml c m phonon4qt5experimental

MODULES =	multimedia/phonon

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools \
		devel/kf5/kcrash

RUN_DEPENDS =	devel/kf5/kdoctools \
		devel/kf5/kcrash \
		x11/gtk+3,-guic \
		devel/desktop-file-utils

LIB_DEPENDS =	devel/kf5/ki18n \
		devel/kf5/kguiaddons \
		devel/kf5/kxmlgui \
		devel/kf5/kdbusaddons \
		x11/qt5/qtsvg

.include <bsd.port.mk>
