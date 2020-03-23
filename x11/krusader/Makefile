# $OpenBSD: Makefile,v 1.41 2020/03/23 18:01:29 rsadowski Exp $

COMMENT=	twin panel file manager for KDE

VERSION=	2.7.2
DISTNAME=	krusader-${VERSION}
REVISION=	0

CATEGORIES=	x11

HOMEPAGE=	https://www.krusader.org

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Auth KF5AuthCore KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5GuiAddons KF5I18n
WANTLIB += KF5IconThemes KF5ItemViews KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOFileWidgets KF5KIOWidgets KF5Notifications KF5Parts
WANTLIB += KF5Service KF5Solid KF5SonnetUi KF5TextWidgets KF5Wallet
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport Qt5Widgets
WANTLIB += Qt5Xml c m z

MASTER_SITES =	${MASTER_SITE_KDE:=stable/krusader/${VERSION}/}
EXTRACT_SUFX=	.tar.xz

MODULES =	devel/kf5

RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/gtk+3,-guic \
		x11/kde-applications/kompare

BUILD_DEPENDS +=devel/kf5/kdoctools \
		devel/gettext,-tools

LIB_DEPENDS +=	devel/kf5/karchive \
		devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kguiaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemviews \
		devel/kf5/knotifications \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/sonnet

NO_TEST =	Yes

.include <bsd.port.mk>
