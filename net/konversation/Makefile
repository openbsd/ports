# $OpenBSD: Makefile,v 1.27 2021/11/02 00:01:39 sthen Exp $

COMMENT =	IRC client for KDE

DISTNAME =	konversation-${MODKDE_VERSION}
REVISION =	0

CATEGORIES =	net

HOMEPAGE =	https://konversation.kde.org/

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Attica KF5Auth KF5AuthCore
WANTLIB += KF5Bookmarks KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Crash
WANTLIB += KF5DBusAddons KF5GlobalAccel KF5I18n KF5IdleTime KF5ItemViews
WANTLIB += KF5JobWidgets KF5KIOCore KF5KIOFileWidgets KF5KIOGui
WANTLIB += KF5KIOWidgets KF5NewStuff KF5NewStuffCore KF5Notifications
WANTLIB += KF5NotifyConfig KF5Parts KF5Service KF5Solid KF5SonnetUi
WANTLIB += KF5TextWidgets KF5Wallet KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Widgets Qt5Xml X11 c m phonon4qt5 qca-qt5

# usual KDE rules:
# LGPLv2.1+, GPLv2+, GPLv3
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${MASTER_SITE_KDE:=stable/release-service/${MODKDE_VERSION}/src/}

MODULES =	x11/kde-applications \
		devel/kf5 \
		lang/python

BUILD_DEPENDS =	devel/kf5/kdoctools \
		devel/kf5/kitemmodels \
		devel/gettext,-tools

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/gettext,-runtime \
		x11/gtk+3,-guic

LIB_DEPENDS =	devel/kf5/karchive  \
		devel/kf5/kbookmarks \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/kglobalaccel \
		devel/kf5/ki18n  \
		devel/kf5/kidletime \
		devel/kf5/kio \
		devel/kf5/kitemviews \
		devel/kf5/knewstuff \
		devel/kf5/knotifications  \
		devel/kf5/knotifyconfig \
		devel/kf5/kparts \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/solid \
		multimedia/phonon \
		security/qca-qt5

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/konversation/scripting_support/python/konversation

.include <bsd.port.mk>
