# $OpenBSD: Makefile,v 1.2 2020/03/23 18:01:26 rsadowski Exp $

COMMENT =	KDE educational Logo programming environment
DISTNAME =	kturtle-${VERSION}
CATEGORIES =	games

HOMEPAGE =	https://www.kde.org/applications/games/kturtle

WANTLIB += ${COMPILER_LIBCXX} KF5Attica KF5Auth KF5AuthCore KF5Codecs
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5I18n KF5KIOCore KF5NewStuff KF5NewStuffCore
WANTLIB += KF5Service KF5SonnetUi KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5PrintSupport Qt5Svg Qt5Widgets Qt5Xml c m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications

LIB_DEPENDS =	devel/kf5/attica \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/knewstuff \
		devel/kf5/ktextwidgets \
		devel/kf5/kxmlgui \
		devel/kf5/sonnet \
		x11/qt5/qtsvg

.include <bsd.port.mk>
