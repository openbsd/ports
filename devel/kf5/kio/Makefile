# $OpenBSD: Makefile,v 1.10 2018/06/27 21:03:40 espie Exp $

# XXX has some internal dependency problems, look for kpasswdserver.json

COMMENT =	network transparent access to files and data in KDE
DISTNAME =	kio-${VERSION}
REVISION =	0

SHARED_LIBS =	KF5KIOCore		5.1 # 5.20
SHARED_LIBS +=	KF5KIOGui		5.1 # 5.20
SHARED_LIBS +=	KF5KIOFileWidgets	5.1 # 5.20
SHARED_LIBS +=	KF5KIONTLM		5.1 # 5.20
SHARED_LIBS +=	KF5KIOWidgets		5.1 # 5.20

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Auth KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5DBusAddons KF5DocTools
WANTLIB += KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets KF5Notifications
WANTLIB += KF5Service KF5Solid KF5SonnetUi KF5TextWidgets KF5Wallet
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Script Qt5Widgets
WANTLIB += Qt5X11Extras Qt5Xml c exslt m xml2 xslt

BUILD_DEPENDS =	devel/gettext-tools \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/kf5/kdoctools \
		devel/desktop-file-utils

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kbookmarks \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdbusaddons \
		devel/kf5/kiconthemes \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/knotifications \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/kdoctools \
		textproc/libxml \
		textproc/libxslt \
		x11/qt5/qtscript \
		x11/qt5/qtx11extras

# GSSAPI support requires fixing (rewriting?) FindGSSAPI.cmake
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_ACL=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_GSSAPI=Yes

# TODO: many tests fail (need something more in TEST_DEPENDS?)
PORTHOME =		${WRKDIR}
TEST_IS_INTERACTIVE =	X11
TEST_DEPENDS =		${BUILD_PKGPATH}

.include <bsd.port.mk>
