# $OpenBSD: Makefile,v 1.34 2020/07/16 05:01:23 rsadowski Exp $


COMMENT =		accounting for KDE 5

HOMEPAGE =		https://kmymoney.org/

VERSION =		5.1.0
DISTNAME =		kmymoney-${VERSION}

CATEGORIES =		productivity x11

SHARED_LIBS +=  kmm_csvimportercore       0.0 # 5.1.0
SHARED_LIBS +=  kmm_icons                 0.0 # 5.1.0
SHARED_LIBS +=  kmm_menus                 0.0 # 5.1.0
SHARED_LIBS +=  kmm_models                0.0 # 5.1.0
SHARED_LIBS +=  kmm_mymoney               0.0 # 5.1.0
SHARED_LIBS +=  kmm_payeeidentifier       0.0 # 5.1.0
SHARED_LIBS +=  kmm_plugin                0.0 # 5.1.0
SHARED_LIBS +=  kmm_printer               0.0 # 5.1.0
SHARED_LIBS +=  kmm_settings              0.0 # 5.1.0
SHARED_LIBS +=  kmm_widgets               0.0 # 5.1.0

# GPLv2+
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_KDE:=stable/kmymoney/${VERSION}/src/}

WANTLIB += ${COMPILER_LIBCXX} KChart KF5Activities KF5AkonadiCore
WANTLIB += KF5Archive KF5Auth KF5AuthCore KF5Bookmarks KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5Contacts KF5CoreAddons KF5Holidays KF5I18n KF5IconThemes
WANTLIB += KF5IdentityManagement KF5ItemModels KF5ItemViews KF5JobWidgets
WANTLIB += KF5KCMUtils KF5KIOCore KF5KIOFileWidgets KF5KIOGui
WANTLIB += KF5KIONTLM KF5KIOWidgets KF5Notifications KF5PimTextEdit
WANTLIB += KF5Service KF5Solid KF5SonnetUi KF5TextWidgets KF5Wallet
WANTLIB += KF5WidgetsAddons KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Positioning Qt5PrintSupport Qt5Qml
WANTLIB += Qt5Quick Qt5QuickWidgets Qt5Sql Qt5WebChannel Qt5WebEngineCore
WANTLIB += Qt5WebEngineWidgets Qt5Widgets Qt5Xml alkimia5 aqbanking
WANTLIB += c gmp gpgmepp gwengui-cpp gwengui-qt5 gwenhywfar ical
WANTLIB += icalss m ofx osp

MODULES =		devel/kf5

BUILD_DEPENDS =		devel/boost \
			devel/gettext,-tools \
			misc/shared-mime-info

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/p5-Finance-Quote \
			misc/shared-mime-info \
			security/p5-Crypt-SSLeay \
			textproc/p5-XML-Parser \
			textproc/p5-XML-Writer \
			www/p5-libwww \
			x11/gtk+3,-guic

LIB_DEPENDS =		devel/gwenhywfar \
			devel/kf5/kactivities \
			devel/kf5/karchive \
			devel/kf5/kauth \
			devel/kf5/kbookmarks \
			devel/kf5/kcmutils \
			devel/kf5/kcodecs \
			devel/kf5/kcompletion \
			devel/kf5/kconfig \
			devel/kf5/kcontacts \
			devel/kf5/kcontacts \
			devel/kf5/kcoreaddons \
			devel/kf5/kdewebkit \
			devel/kf5/kholidays \
			devel/kf5/kholidays \
			devel/kf5/kio \
			devel/kf5/kitemmodels \
			devel/kf5/kitemviews \
			devel/kf5/kjobwidgets \
			devel/kf5/knotifications \
			devel/kf5/kservice \
			devel/kf5/ktextwidgets \
			devel/kf5/kwallet \
			devel/kf5/kwidgetsaddons  \
			devel/kf5/kxmlgui \
			devel/kf5/solid \
			devel/kf5/sonnet \
			devel/libofx \
			graphics/kdiagram \
			productivity/aqbanking \
			productivity/libalkimia \
			security/gpgme,,-qt \
			security/libassuan \
			security/libgpg-error \
			textproc/libical \
			x11/kde-applications/akonadi \
			x11/kde-applications/kidentitymanagement \
			x11/kde-applications/kpimtextedit \
			x11/kde-applications/kqtquickcharts \
			x11/qt5/qtdeclarative \
			x11/qt5/qtwebengine

CONFIGURE_ARGS =	-DUSE_QT_DESIGNER=OFF \
			-DENABLE_WEBENGINE=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
