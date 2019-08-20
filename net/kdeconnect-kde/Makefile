# $OpenBSD: Makefile,v 1.1.1.1 2019/08/20 08:48:30 feinerer Exp $

COMMENT =	KDE app that allows your devices to communicate

V =		1.3.5
DISTNAME =	kdeconnect-kde-${V}

SHARED_LIBS +=	kdeconnectcore		0.0 # 1.3
SHARED_LIBS +=	kdeconnectinterfaces	0.0 # 1.3
SHARED_LIBS +=	kdeconnectpluginkcm	0.0 # 1.3

CATEGORIES =	net

HOMEPAGE =	https://invent.kde.org/kde/kdeconnect-kde

MAINTAINER =	Ingo Feinerer <feinerer@logic.at>

# GPLv2+
PERMIT_PACKAGE =Yes

WANTLIB += ${COMPILER_LIBCXX} ICE KF5Auth KF5Bookmarks KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5DBusAddons KF5I18n KF5IconThemes KF5ItemViews
WANTLIB += KF5JobWidgets KF5KCMUtils KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOWidgets KF5Notifications KF5Service KF5Solid
WANTLIB += KF5WidgetsAddons KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Qml Qt5Widgets Qt5X11Extras Qt5Xml
WANTLIB += SM X11 Xext Xtst c fakekey m qca-qt5

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
