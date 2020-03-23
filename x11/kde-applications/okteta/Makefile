# $OpenBSD: Makefile,v 1.8 2020/03/23 18:01:28 rsadowski Exp $

COMMENT =	Hex Editor
VERSION =	0.26.3
DISTNAME =	okteta-${VERSION}
CATEGORIES =	editors

EPOCH =		0

SHARED_LIBS +=  Kasten4Controllers        0.0 # 0.4
SHARED_LIBS +=  Kasten4Core               0.0 # 0.4
SHARED_LIBS +=  Kasten4Gui                0.0 # 0.4
SHARED_LIBS +=  Kasten4Okteta2Controllers 0.0 # 0.4
SHARED_LIBS +=  Kasten4Okteta2Core        0.0 # 0.4
SHARED_LIBS +=  Kasten4Okteta2Gui         0.0 # 0.4
SHARED_LIBS +=  Okteta3Core               0.0 # 0.10
SHARED_LIBS +=  Okteta3Gui                0.0 # 0.10

WANTLIB += ${COMPILER_LIBCXX} KF5Attica KF5Auth KF5AuthCore KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5DBusAddons
WANTLIB += KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets KF5KCMUtils
WANTLIB += KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets KF5NewStuff
WANTLIB += KF5NewStuffCore KF5Parts KF5Service KF5Solid KF5SonnetUi
WANTLIB += KF5TextWidgets KF5WidgetsAddons KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport Qt5Qml
WANTLIB += Qt5Script Qt5Widgets Qt5Xml c m qca-qt5

MASTER_SITES =	${MASTER_SITE_KDE:=stable/okteta/${VERSION}/src/}

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications

RUN_DEPENDS +=	misc/shared-mime-info

LIB_DEPENDS +=	devel/kf5/kbookmarks \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfigwidgets \
		devel/kf5/kdbusaddons \
		devel/kf5/kiconthemes \
		devel/kf5/ki18n \
		devel/kf5/kcmutils \
		devel/kf5/knewstuff \
		devel/kf5/kparts \
		devel/kf5/kio \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		security/qca-qt5 \
		x11/qt5/qtscript \
		x11/qt5/qtdeclarative

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
