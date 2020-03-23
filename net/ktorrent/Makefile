# $OpenBSD: Makefile,v 1.50 2020/03/23 18:01:13 rsadowski Exp $

COMMENT =	BitTorrent Client

VERSION =	5.1.2
DISTNAME =	ktorrent-${VERSION}
REVISION =	1

SHARED_LIBS +=  ktcore                    1.0 # 0.0

CATEGORIES =	net

HOMEPAGE =	https://www.kde.org/applications/internet/ktorrent/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Auth KF5AuthCore KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5DBusAddons
WANTLIB += KF5DNSSD KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets
WANTLIB += KF5KCMUtils KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets
WANTLIB += KF5KrossCore KF5Notifications KF5NotifyConfig KF5Parts
WANTLIB += KF5Plotting KF5Service KF5Solid KF5SonnetUi KF5TextWidgets
WANTLIB += KF5Torrent KF5WebKit KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Script Qt5WebKit Qt5WebKitWidgets Qt5Widgets Qt5Xml
WANTLIB += c gcrypt gmp m tag

MASTER_SITES =	${MASTER_SITE_KDE:=stable/ktorrent/${VERSION}/}

MODULES =		devel/kf5 \
			multimedia/phonon

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/boost

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

LIB_DEPENDS =		audio/taglib \
			devel/kf5/karchive \
			devel/kf5/kauth \
			devel/kf5/kbookmarks \
			devel/kf5/kcmutils \
			devel/kf5/kcodecs \
			devel/kf5/kcompletion \
			devel/kf5/kconfig \
			devel/kf5/kcoreaddons \
			devel/kf5/kcrash \
			devel/kf5/kdbusaddons \
			devel/kf5/kdewebkit \
			devel/kf5/kdnssd \
			devel/kf5/ki18n \
			devel/kf5/kiconthemes \
			devel/kf5/kio \
			devel/kf5/kitemviews \
			devel/kf5/kjobwidgets \
			devel/kf5/knotifications \
			devel/kf5/knotifyconfig \
			devel/kf5/kparts \
			devel/kf5/kplotting \
			devel/kf5/kross \
			devel/kf5/kservice \
			devel/kf5/ktextwidgets \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kwindowsystem \
			devel/kf5/kxmlgui \
			devel/kf5/solid \
			devel/kf5/sonnet \
			net/libktorrent \
			x11/qt5/qtscript \
			x11/qt5/qtwebkit

.include <bsd.port.mk>

