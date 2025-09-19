USE_WXNEEDED =	Yes

COMMENT =	personal finance manager

V =		5.2.1
DISTNAME =	kmymoney-${V}

CATEGORIES =	productivity x11

HOMEPAGE =	https://kmymoney.org

SHARED_LIBS +=  kmm_csvimportercore       1.0 # 5.2.0
SHARED_LIBS +=  kmm_icons                 1.0 # 5.2.0
SHARED_LIBS +=  kmm_menus                 1.0 # 5.2.0
SHARED_LIBS +=  kmm_models                1.0 # 5.2.0
SHARED_LIBS +=  kmm_mymoney               2.0 # 5.2.0
SHARED_LIBS +=  kmm_payeeidentifier       1.0 # 5.1.0
SHARED_LIBS +=  kmm_plugin                1.0 # 5.2.0
SHARED_LIBS +=  kmm_printer               1.0 # 5.2.0
SHARED_LIBS +=  kmm_settings              1.0 # 5.2.0
SHARED_LIBS +=  kmm_widgets               2.0 # 5.2.0

SHARED_LIBS +=	kmm_base_dialogs          0.0 # 0.0
SHARED_LIBS +=	kmm_base_widgets          0.0 # 0.0
SHARED_LIBS +=	kmm_extended_dialogs      0.0 # 0.0
SHARED_LIBS +=	kmm_gpgfile               0.0 # 0.0
SHARED_LIBS +=	kmm_keychain              0.0 # 0.0
SHARED_LIBS +=	kmm_menuactionexchanger   0.0 # 0.0
SHARED_LIBS +=	kmm_selections            0.0 # 0.0
SHARED_LIBS +=	kmm_templates             0.0 # 0.0
SHARED_LIBS +=	kmm_webconnect            0.0 # 0.0
SHARED_LIBS +=	kmm_wizard                0.0 # 0.0
SHARED_LIBS +=	kmm_yesno                 0.0 # 0.0
SHARED_LIBS +=	kmm_codec                 0.0 # 0.0
SHARED_LIBS +=	onlinetask_interfaces     0.0 # 0.0

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

SITES =		${SITE_KDE:=stable/kmymoney/${V}/}
EXTRACT_SUFX =	.tar.xz

WANTLIB += ${COMPILER_LIBCXX} GL KChart6 KF6Archive KF6Bookmarks
WANTLIB += KF6Codecs KF6ColorScheme KF6Completion KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6Crash
WANTLIB += KF6GuiAddons KF6Holidays KF6I18n KF6ItemModels KF6ItemViews
WANTLIB += KF6JobWidgets KF6KCMUtils KF6KCMUtilsCore KF6KCMUtilsQuick
WANTLIB += KF6KIOCore KF6KIOFileWidgets KF6KIOGui KF6KIOWidgets
WANTLIB += KF6Notifications KF6Service KF6Solid KF6SonnetUi KF6TextWidgets
WANTLIB += KF6WidgetsAddons KF6XmlGui Qt6Concurrent Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6OpenGL Qt6Positioning Qt6PrintSupport
WANTLIB += Qt6Qml Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript Qt6Quick
WANTLIB += Qt6Sql Qt6WebChannel Qt6WebEngineCore Qt6WebEngineWidgets
WANTLIB += Qt6Widgets Qt6Xml alkimia6 assuan c db db_cxx gmp gpgme
WANTLIB += gpgmepp ical icalss icalvcal icudata icui18n icuuc
WANTLIB += m ofx ${MODPY_WANTLIB} qgpgmeqt6 qt6keychain sqlcipher

MODULES =		lang/python \
			devel/kf6

CONFIGURE_STYLE =	cmake

BUILD_DEPENDS =		devel/boost \
			devel/gettext,-tools \
			misc/shared-mime-info \
			textproc/libical,-glib \
			x11/qt6/qtsensors

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/p5-Finance-Quote \
			misc/shared-mime-info \
			security/p5-Crypt-SSLeay \
			textproc/p5-XML-Parser \
			textproc/p5-XML-Writer \
			www/p5-libwww \
			www/woob \
			x11/gtk+4,-guic

LIB_DEPENDS =		databases/db/v4 \
			databases/sqlcipher \
			devel/gmp \
			devel/kf6/karchive \
			devel/kf6/kbookmarks \
			devel/kf6/kcmutils \
			devel/kf6/kcodecs \
			devel/kf6/kcolorscheme \
			devel/kf6/kcompletion \
			devel/kf6/kconfig \
			devel/kf6/kconfigwidgets \
			devel/kf6/kcoreaddons \
			devel/kf6/kguiaddons \
			devel/kf6/kholidays \
			devel/kf6/ki18n \
			devel/kf6/kio \
			devel/kf6/kitemmodels \
			devel/kf6/kitemviews \
			devel/kf6/kjobwidgets \
			devel/kf6/kcrash \
			devel/kf6/knotifications \
			devel/kf6/kservice \
			devel/kf6/ktextwidgets \
			devel/kf6/kwidgetsaddons  \
			devel/kf6/kxmlgui \
			devel/kf6/solid \
			devel/kf6/sonnet \
			devel/libofx \
			graphics/kdiagram-qt6 \
			productivity/libalkimia>=8.2.1 \
			security/qtkeychain,qt6 \
			security/gpgme,-qt \
			security/libassuan \
			textproc/icu4c \
			textproc/libical \
			x11/qt6/qtdeclarative \
			x11/qt6/qtpositioning \
			x11/qt6/qtwebchannel \
			x11/qt6/qtwebengine

CONFIGURE_ARGS =	-DUSE_QT_DESIGNER=OFF \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

DEBUG_PACKAGES =	${BUILD_PACKAGES}

CONFIGURE_ARGS +=	-DBUILD_WITH_QT6=ON

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
