# $OpenBSD: Makefile,v 1.41 2018/06/27 21:03:59 espie Exp $

COMMENT =	BitTorrent Client

DISTNAME =	ktorrent-5.1.0
REVISION =	0

SHARED_LIBS +=  ktcore                    1.0 # 0.0

CATEGORIES =	net

HOMEPAGE =	https://www.kde.org/applications/internet/ktorrent/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Auth KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5DBusAddons
WANTLIB += KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets KF5KCMUtils
WANTLIB += KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets KF5Notifications
WANTLIB += KF5NotifyConfig KF5Parts KF5Plotting KF5Service KF5Solid
WANTLIB += KF5SonnetUi KF5TextWidgets KF5Torrent KF5WebKit KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5WebKit Qt5WebKitWidgets Qt5Widgets Qt5Xml c gcrypt
WANTLIB += gmp m tag

MASTER_SITES =	${MASTER_SITE_KDE:=stable/ktorrent/5.1/}

MODULES =		devel/kf5 \
			multimedia/phonon

BUILD_DEPENDS =		devel/gettext-tools \
			devel/kf5/kross \
			devel/kf5/kdnssd \
			devel/boost

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/kf5/kross \
			devel/kf5/kdnssd \
			x11/gtk+3,-guic

LIB_DEPENDS =		audio/taglib \
			x11/qt5/qtwebkit \
			devel/kf5/kcmutils \
			devel/kf5/kconfig \
			devel/kf5/kcoreaddons \
			devel/kf5/kcrash \
			devel/kf5/kdbusaddons \
			devel/kf5/ki18n \
			devel/kf5/kiconthemes \
			devel/kf5/kio \
			devel/kf5/knotifications \
			devel/kf5/knotifyconfig \
			devel/kf5/kparts \
			devel/kf5/kservice \
			devel/kf5/solid \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kwindowsystem \
			devel/kf5/kxmlgui \
			devel/kf5/karchive \
			devel/kf5/kdewebkit \
			devel/kf5/kplotting \
			net/libktorrent

.include <bsd.port.mk>

