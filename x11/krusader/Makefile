# $OpenBSD: Makefile,v 1.29 2017/07/27 10:15:29 sthen Exp $

COMMENT=	twin panel file manager for KDE

VERSION=	2.6.0
DISTNAME=	krusader-${VERSION}
REVISION=	0

CATEGORIES=	x11

HOMEPAGE=	http://www.krusader.org

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += KF5Archive KF5Auth KF5Bookmarks KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5GuiAddons KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets KF5Notifications
WANTLIB += KF5Parts KF5Service KF5Solid KF5SonnetUi KF5TextWidgets
WANTLIB += KF5Wallet KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Widgets Qt5Xml c m z

MASTER_SITES =	${MASTER_SITE_KDE:=stable/krusader/${VERSION}/}
EXTRACT_SUFX=	.tar.xz

MODULES=	devel/kf5

RUN_DEPENDS +=	devel/desktop-file-utils \
		devel/gettext \
		x11/gtk+3,-guic

BUILD_DEPENDS +=devel/kf5/kdoctools \
		devel/gettext-tools

LIB_DEPENDS +=	devel/kf5/karchive \
		devel/kf5/kbookmarks \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kcoreaddons\
		devel/kf5/kconfig \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kitemviews \
		devel/kf5/kio \
		devel/kf5/knotifications \
		devel/kf5/kparts \
		devel/kf5/solid \
		devel/kf5/ktextwidgets \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/kguiaddons

NO_TEST =	Yes

.include <bsd.port.mk>
