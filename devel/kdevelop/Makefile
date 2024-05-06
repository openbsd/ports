USE_WXNEEDED =		Yes

COMMENT =	IDE for C, C++, Python, QML/JavaScript and PHP

CATEGORIES =	devel x11

DISTNAME =	kdevelop-${MODKDE_VERSION}
REVISION =	1

HOMEPAGE =	https://www.kdevelop.org/

SHARED_LIBS +=  KDevPlatformDebugger      5.0 # 5.2
SHARED_LIBS +=  KDevPlatformDocumentation 3.0 # 5.2
SHARED_LIBS +=  KDevPlatformInterfaces    3.2 # 5.2
SHARED_LIBS +=  KDevPlatformLanguage      7.0 # 5.2
SHARED_LIBS +=  KDevPlatformOutputView    2.0 # 5.2
SHARED_LIBS +=  KDevPlatformProject       3.0 # 5.2
SHARED_LIBS +=  KDevPlatformSerialization 5.0 # 5.2
SHARED_LIBS +=  KDevPlatformShell         6.0 # 5.2
SHARED_LIBS +=  KDevPlatformSublime       3.0 # 5.2
SHARED_LIBS +=  KDevPlatformTests         4.0 # 5.2
SHARED_LIBS +=  KDevPlatformUtil          3.2 # 5.2
SHARED_LIBS +=  KDevPlatformVcs           3.0 # 5.2
SHARED_LIBS +=  KDevClangPrivate          3.0 # 5.5
SHARED_LIBS +=  KDevCMakeCommon           2.1 # 5.5
SHARED_LIBS +=  KDevCompileAnalyzerCommon 0.0 # 5.5

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+, LGPLv2.1+, GNU FDLv1.2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5Archive KF5Attica
WANTLIB += KF5Auth KF5AuthCore KF5Bookmarks KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5Declarative KF5GuiAddons KF5I18n KF5IconThemes
WANTLIB += KF5ItemModels KF5ItemViews KF5JobWidgets KF5KCMUtils
WANTLIB += KF5KIOCore KF5KIOFileWidgets KF5KIOGui KF5KIOWidgets
WANTLIB += KF5NewStuff KF5NewStuffCore KF5NewStuffWidgets KF5Notifications
WANTLIB += KF5NotifyConfig KF5Package KF5Parts KF5Plasma KF5Purpose
WANTLIB += KF5PurposeWidgets KF5Runner KF5Service KF5Solid KF5SonnetUi
WANTLIB += KF5SyntaxHighlighting KF5TextEditor KF5TextWidgets
WANTLIB += KF5ThreadWeaver KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += Kasten4Controllers Kasten4Core Kasten4Gui Kasten4Okteta2Controllers
WANTLIB += Kasten4Okteta2Core Kasten4Okteta2Gui Okteta3Core Okteta3Gui
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Help Qt5Network
WANTLIB += Qt5Positioning Qt5PrintSupport Qt5Qml Qt5QmlModels
WANTLIB += Qt5Quick Qt5QuickWidgets Qt5Sql Qt5Test Qt5WebChannel
WANTLIB += Qt5WebEngineCore Qt5WebEngineWidgets Qt5Widgets Qt5Xml
WANTLIB += X11 apr-1 aprutil-1 c komparediff2 m svn_client-1 svn_fs-1
WANTLIB += svn_ra-1 svn_repos-1 svn_subr-1 svn_wc-1

SITES =	${SITE_KDE:=stable/release-service/${MODKDE_VERSION}/src/}

MODULES =	x11/kde-applications \
		devel/kf5 \
		lang/clang \
		lang/python

MODCLANG_COMPILER_LINKS=No
MODCLANG_BUILDDEP=	No
MODPY_BUILDDEP =	No

BUILD_DEPENDS =	archivers/gtar \
		devel/boost \
		devel/clang-tools-extra \
		devel/cppcheck \
		devel/gettext,-tools \
		shells/bash-completion \
		lang/clazy \
		misc/shared-mime-info

RUN_DEPENDS =	devel/clang-tools-extra \
		devel/cppcheck \
		devel/desktop-file-utils \
		devel/gmake \
		lang/clazy \
		misc/shared-mime-info \
		x11/gtk+4,-guic \
		x11/kde-applications/kate>=${MODKDE_VERSION} \
		x11/kde-applications/kio-extras>=${MODKDE_VERSION} \
		x11/kde-applications/konsole

LIB_DEPENDS =	${MODCLANG_LIB_DEPENDS} \
		devel/kf5/karchive \
		devel/kf5/kcmutils \
		devel/kf5/kconfig \
		devel/kf5/kcrash \
		devel/kf5/kdeclarative \
		devel/kf5/kguiaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/knewstuff \
		devel/kf5/knotifications \
		devel/kf5/knotifyconfig \
		devel/kf5/kparts \
		devel/kf5/krunner \
		devel/kf5/kservice \
		devel/kf5/ktexteditor \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/purpose \
		devel/kf5/threadweaver \
		devel/subversion \
		x11/grantlee-qt5>=5.3 \
		x11/kde-applications/libkomparediff2>=${MODKDE_VERSION} \
		x11/kde-applications/okteta>=0.26.1v0 \
		x11/qt5/qtdeclarative \
		x11/qt5/qttools \
		x11/qt5/qtwebengine

TEST_IS_INTERACTIVE =	X11

TEST_DEPENDS =		${BUILD_PKGPATH}

TEST_ENV +=	QT_PLUGIN_PATH="${PREFIX}/lib/qt5/plugins"

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_KSysGuard=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_KF5SysGuard=ON \
			-DClang_DIR=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib/cmake/clang

pre-configure:
	ln -sf ${LOCALBASE}/bin/gtar ${WRKDIR}/bin/tar

.include <bsd.port.mk>
