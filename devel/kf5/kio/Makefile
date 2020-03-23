# $OpenBSD: Makefile,v 1.15 2020/03/23 18:01:08 rsadowski Exp $

# XXX has some internal dependency problems, look for kpasswdserver.json

COMMENT =	network transparent access to files and data in KDE
DISTNAME =	kio-${VERSION}

SHARED_LIBS =	KF5KIOCore		6.0 # 5.20
SHARED_LIBS +=	KF5KIOGui		6.0 # 5.20
SHARED_LIBS +=	KF5KIOFileWidgets	6.0 # 5.20
SHARED_LIBS +=	KF5KIONTLM		6.0 # 5.20
SHARED_LIBS +=	KF5KIOWidgets		6.0 # 5.20

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Auth KF5AuthCore KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5Crash KF5DBusAddons
WANTLIB += KF5DocTools KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets
WANTLIB += KF5Notifications KF5Service KF5Solid KF5SonnetUi KF5TextWidgets
WANTLIB += KF5Wallet KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Widgets Qt5X11Extras Qt5Xml c exslt m xml2 xslt

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf5/kdoctools>=${MODKF5_VERSION}

RUN_DEPENDS =	devel/kf5/kdoctools>=${MODKF5_VERSION} \
		devel/desktop-file-utils

LIB_DEPENDS =	devel/kf5/karchive>=${MODKF5_VERSION} \
		devel/kf5/kbookmarks>=${MODKF5_VERSION} \
		devel/kf5/kauth>=${MODKF5_VERSION} \
		devel/kf5/kcompletion>=${MODKF5_VERSION} \
		devel/kf5/kconfig>=${MODKF5_VERSION} \
		devel/kf5/kconfigwidgets>=${MODKF5_VERSION} \
		devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
		devel/kf5/kcrash>=${MODKF5_VERSION} \
		devel/kf5/kdbusaddons>=${MODKF5_VERSION} \
		devel/kf5/kdoctools>=${MODKF5_VERSION} \
		devel/kf5/kiconthemes>=${MODKF5_VERSION} \
		devel/kf5/kitemviews>=${MODKF5_VERSION} \
		devel/kf5/kjobwidgets>=${MODKF5_VERSION} \
		devel/kf5/knotifications>=${MODKF5_VERSION} \
		devel/kf5/kservice>=${MODKF5_VERSION} \
		devel/kf5/ktextwidgets>=${MODKF5_VERSION} \
		devel/kf5/kwallet>=${MODKF5_VERSION} \
		devel/kf5/kwidgetsaddons>=${MODKF5_VERSION} \
		devel/kf5/kwindowsystem>=${MODKF5_VERSION} \
		devel/kf5/kxmlgui>=${MODKF5_VERSION} \
		devel/kf5/solid>=${MODKF5_VERSION} \
		textproc/libxml \
		textproc/libxslt \
		x11/qt5/qtx11extras

# GSSAPI support requires fixing (rewriting?) FindGSSAPI.cmake
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_ACL=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_GSSAPI=ON

# TODO: many tests fail (need something more in TEST_DEPENDS?)
PORTHOME =		${WRKDIR}
TEST_IS_INTERACTIVE =	X11
TEST_DEPENDS =		${BUILD_PKGPATH}

.include <bsd.port.mk>
