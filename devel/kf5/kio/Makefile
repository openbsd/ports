# $OpenBSD: Makefile,v 1.2 2016/12/25 14:54:49 zhuk Exp $

# XXX has some internal dependency problems, look for kpasswdserver.json

COMMENT =	network transparent access to files and data in KDE
DISTNAME =	kio-${VERSION}

SHARED_LIBS =	KF5KIOCore		1.0 # 5.20
SHARED_LIBS +=	KF5KIOGui		1.0 # 5.20
SHARED_LIBS +=	KF5KIOFileWidgets	1.0 # 5.20
SHARED_LIBS +=	KF5KIONTLM		1.0 # 5.20
SHARED_LIBS +=	KF5KIOWidgets		1.0 # 5.20

WANTLIB =  KF5Archive KF5Auth KF5Bookmarks KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5DBusAddons KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets
WANTLIB += KF5Notifications KF5Service KF5Solid KF5SonnetUi KF5TextWidgets
WANTLIB += KF5Wallet KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Script
WANTLIB += Qt5Widgets Qt5X11Extras Qt5Xml
WANTLIB += c exslt m xml2 xslt

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

# The following tests FAILED:
# 3 - kiocore-kacltest (Failed)
# 5 - kiocore-kmountpointtest (Failed)
# 12 - kiocore-ktcpsockettest (Failed)
# 19 - kiocore-http_jobtest (OTHER_FAULT)
# 21 - kiocore-klocalsocketservertest (Failed)
# 24 - kiowidgets-dropjobtest (Failed)
# 26 - kiowidgets-kdirlistertest (Failed)
# 27 - kiowidgets-kdirmodeltest (OTHER_FAULT)
# 41 - kiofilewidgets-kfilewidgettest (Failed)

.include <bsd.port.mk>
