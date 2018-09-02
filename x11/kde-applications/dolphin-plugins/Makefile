# $OpenBSD: Makefile,v 1.2 2018/09/02 15:32:54 rsadowski Exp $

COMMENT =	Dolphin plugins
DISTNAME =	dolphin-plugins-${VERSION}
PKGNAME  =	dolphin-plugins-kf5-${VERSION}
CATEGORIES =	x11

KDE5 =		Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Bookmarks KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5GuiAddons KF5I18n KF5IconThemes KF5ItemViews
WANTLIB += KF5JobWidgets KF5KDELibs4Support KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOWidgets KF5Notifications KF5Parts KF5Service
WANTLIB += KF5Solid KF5SonnetUi KF5TextEditor KF5TextWidgets KF5UnitConversion
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport Qt5Widgets
WANTLIB += Qt5Xml dolphinvcs m

BUILD_DEPENDS +=devel/gettext-tools

RUN_DEPENDS =	x11/kde-applications/dolphin

LIB_DEPENDS =	devel/kf5/kxmlgui\
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kdelibs4support \
		devel/kf5/ktexteditor \
		devel/kf5/kwidgetsaddons \
		x11/kde-applications/dolphin

.include <bsd.port.mk>
