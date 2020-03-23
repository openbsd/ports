# $OpenBSD: Makefile,v 1.2 2020/03/23 18:01:13 rsadowski Exp $

COMMENT =	KDE app that allows your devices to communicate

V =		1.3.5
DISTNAME =	kdeconnect-kde-${V}
REVISION =	0

SHARED_LIBS +=	kdeconnectcore		0.0 # 1.3
SHARED_LIBS +=	kdeconnectinterfaces	0.0 # 1.3
SHARED_LIBS +=	kdeconnectpluginkcm	0.0 # 1.3

CATEGORIES =	net

HOMEPAGE =	https://invent.kde.org/kde/kdeconnect-kde

MAINTAINER =	Ingo Feinerer <feinerer@logic.at>

# GPLv2+
PERMIT_PACKAGE =Yes

WANTLIB += ${COMPILER_LIBCXX} ICE KF5Auth KF5AuthCore KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5DBusAddons KF5I18n
WANTLIB += KF5IconThemes KF5ItemViews KF5JobWidgets KF5KCMUtils
WANTLIB += KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets KF5Notifications
WANTLIB += KF5Service KF5Solid KF5WidgetsAddons KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5Widgets
WANTLIB += Qt5X11Extras Qt5Xml SM X11 Xext Xtst c fakekey m qca-qt5

MASTER_SITES =	${MASTER_SITE_KDE:=stable/kdeconnect/${V}/}

MODULES =	devel/kf5

BUILD_DEPENDS =	devel/gettext,-tools
RUN_DEPENDS =	devel/desktop-file-utils \
		sysutils/sshfs-fuse \
		sysutils/sshpass \
		x11/gtk+3,-guic
LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcmutils \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdbusaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/knotifications \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		security/qca-qt5 \
		x11/libfakekey \
		x11/qt5/qtdeclarative,-main \
		x11/qt5/qtx11extras

pre-configure:
	${SUBST_CMD} ${WRKSRC}/plugins/sftp/mounter.cpp

.include <bsd.port.mk>
