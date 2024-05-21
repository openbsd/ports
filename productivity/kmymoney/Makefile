USE_WXNEEDED =	Yes

COMMENT =	accounting for KDE 5

V =		5.1.3
DISTNAME =	kmymoney-${V}
REVISION =	7

CATEGORIES =	productivity x11

HOMEPAGE =	https://kmymoney.org

SHARED_LIBS +=  kmm_csvimportercore       0.0 # 5.1.2
SHARED_LIBS +=  kmm_icons                 0.0 # 5.1.2
SHARED_LIBS +=  kmm_menus                 0.0 # 5.1.2
SHARED_LIBS +=  kmm_models                0.0 # 5.1.2
SHARED_LIBS +=  kmm_mymoney               1.0 # 5.1.2
SHARED_LIBS +=  kmm_payeeidentifier       0.0 # 5.1.0
SHARED_LIBS +=  kmm_plugin                0.0 # 5.1.2
SHARED_LIBS +=  kmm_printer               0.0 # 5.1.2
SHARED_LIBS +=  kmm_settings              0.0 # 5.1.2
SHARED_LIBS +=  kmm_widgets               1.0 # 5.1.2

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

SITES =		${SITE_KDE:=stable/kmymoney/${V}/src/}

WANTLIB += ${COMPILER_LIBCXX} KChart KF5Activities KF5Archive
WANTLIB += KF5Auth KF5AuthCore KF5Bookmarks KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Holidays KF5I18n KF5IconThemes KF5ItemModels KF5ItemViews
WANTLIB += KF5JobWidgets KF5KCMUtils KF5KIOCore KF5KIOFileWidgets
WANTLIB += KF5KIOGui KF5KIONTLM KF5KIOWidgets KF5Notifications
WANTLIB += KF5Service KF5Solid KF5SonnetUi KF5TextWidgets KF5Wallet
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Positioning Qt5PrintSupport
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5QuickWidgets Qt5Sql
WANTLIB += Qt5WebChannel Qt5WebEngineCore Qt5WebEngineWidgets
WANTLIB += Qt5Widgets Qt5Xml X11 aqbanking assuan c db db_cxx
WANTLIB += gmp gpgme gpgmepp gwengui-cpp gwengui-qt5 gwenhywfar
WANTLIB += ical icalss icalvcal icui18n icuuc m ofx ${MODPY_WANTLIB}

MODULES =		lang/python \
			devel/kf5

CONFIGURE_STYLE =	cmake

BUILD_DEPENDS =		devel/boost \
			devel/gettext,-tools \
			misc/shared-mime-info \
			textproc/libical,-glib

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/p5-Finance-Quote \
			misc/shared-mime-info \
			security/p5-Crypt-SSLeay \
			textproc/p5-XML-Parser \
			textproc/p5-XML-Writer \
			www/p5-libwww \
			www/woob \
			x11/gtk+4,-guic

LIB_DEPENDS =		devel/gmp \
			devel/gwenhywfar \
			devel/kf5/kactivities \
			devel/kf5/karchive \
			devel/kf5/kauth \
			devel/kf5/kbookmarks \
			devel/kf5/kcmutils \
			devel/kf5/kcodecs \
			devel/kf5/kcompletion \
			devel/kf5/kconfig \
			devel/kf5/kconfigwidgets \
			devel/kf5/kcoreaddons \
			devel/kf5/kholidays \
			devel/kf5/ki18n \
			devel/kf5/kiconthemes \
			devel/kf5/kio \
			devel/kf5/kitemmodels \
			devel/kf5/kitemviews \
			devel/kf5/kjobwidgets \
			devel/kf5/knotifications \
			devel/kf5/kservice \
			devel/kf5/ktextwidgets \
			devel/kf5/kwallet \
			devel/kf5/kwidgetsaddons  \
			devel/kf5/kwindowsystem \
			devel/kf5/kxmlgui \
			devel/kf5/solid \
			devel/kf5/sonnet \
			devel/libofx \
			graphics/kdiagram \
			productivity/aqbanking \
			productivity/libalkimia>=8.0 \
			security/gpgme,-qt \
			security/libassuan \
			textproc/icu4c \
			textproc/libical \
			x11/qt5/qtdeclarative \
			x11/qt5/qtlocation \
			x11/qt5/qtwebchannel \
			x11/qt5/qtwebengine

CONFIGURE_ARGS =	-DUSE_QT_DESIGNER=OFF \
			-DENABLE_WEBENGINE=ON \
			-DOPT_KF5_COMPONENTS=OFF \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
