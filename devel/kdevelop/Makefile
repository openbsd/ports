# $OpenBSD: Makefile,v 1.38 2020/07/01 22:24:08 cwen Exp $

# Qt5WebEngine
USE_WXNEEDED =		Yes

COMMENT =	IDE for C, C++, Python, QML/JavaScript and PHP

VERSION =	5.5.2
REVISION=	0
DISTNAME =	kdevelop-${VERSION}

HOMEPAGE =	https://www.kdevelop.org/

SHARED_LIBS +=  KDevPlatformDebugger      2.0 # 5.2
SHARED_LIBS +=  KDevPlatformDocumentation 2.0 # 5.2
SHARED_LIBS +=  KDevPlatformInterfaces    2.0 # 5.2
SHARED_LIBS +=  KDevPlatformLanguage      2.0 # 5.2
SHARED_LIBS +=  KDevPlatformOutputView    2.0 # 5.2
SHARED_LIBS +=  KDevPlatformProject       2.0 # 5.2
SHARED_LIBS +=  KDevPlatformSerialization 2.0 # 5.2
SHARED_LIBS +=  KDevPlatformShell         2.0 # 5.2
SHARED_LIBS +=  KDevPlatformSublime       2.0 # 5.2
SHARED_LIBS +=  KDevPlatformTests         2.0 # 5.2
SHARED_LIBS +=  KDevPlatformUtil          2.0 # 5.2
SHARED_LIBS +=  KDevPlatformVcs           2.0 # 5.2
SHARED_LIBS +=  KDevClangPrivate          0.0 # 5.5
SHARED_LIBS +=  KDevCMakeCommon           0.0 # 5.5
SHARED_LIBS +=  KDevCompileAnalyzerCommon 0.0 # 5.5

CATEGORIES =	devel x11

# GPLv2+, LGPLv2.1+, GNU FDLv1.2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5Archive KF5Attica
WANTLIB += KF5Auth KF5AuthCore KF5Bookmarks KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5Declarative KF5GuiAddons KF5I18n KF5IconThemes
WANTLIB += KF5ItemModels KF5ItemViews KF5JobWidgets KF5KCMUtils
WANTLIB += KF5KIOCore KF5KIOFileWidgets KF5KIOWidgets KF5NewStuff
WANTLIB += KF5NewStuffCore KF5Notifications KF5NotifyConfig KF5Package
WANTLIB += KF5Parts KF5Plasma KF5Purpose KF5PurposeWidgets KF5Runner
WANTLIB += KF5Service KF5Solid KF5SonnetUi KF5TextEditor KF5TextWidgets
WANTLIB += KF5ThreadWeaver KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += Kasten4Controllers Kasten4Core Kasten4Gui Kasten4Okteta2Controllers
WANTLIB += Kasten4Okteta2Core Kasten4Okteta2Gui Okteta3Core Okteta3Gui
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Help Qt5Network
WANTLIB += Qt5Positioning Qt5PrintSupport Qt5Qml Qt5Quick Qt5QuickWidgets
WANTLIB += Qt5Sql Qt5Test Qt5WebChannel Qt5WebEngineCore Qt5WebEngineWidgets
WANTLIB += Qt5Widgets Qt5Xml apr-1 aprutil-1 c clang komparediff2
WANTLIB += m svn_client-1 svn_fs-1 svn_ra-1 svn_repos-1 svn_subr-1
WANTLIB += svn_wc-1

MASTER_SITES =	${MASTER_SITE_KDE:=stable/kdevelop/${VERSION}/src/}

MODULES =	devel/kf5 \
		lang/python

BUILD_DEPENDS =	archivers/gtar \
		devel/boost \
		devel/clang-tools-extra \
		devel/cppcheck \
		devel/gettext,-tools \
		lang/clazy>=1.5 \
		misc/shared-mime-info

RUN_DEPENDS =	devel/clang-tools-extra \
		devel/cmake \
		devel/cppcheck \
		devel/desktop-file-utils \
		devel/gmake \
		lang/clazy>=1.5 \
		misc/shared-mime-info \
		x11/gtk+3,-guic \
		x11/kde-applications/kate \
		x11/kde-applications/kio-extras \
		x11/kde-applications/konsole

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/karchive \
		devel/kf5/kcmutils \
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
		devel/llvm \
		devel/subversion \
		x11/grantlee-qt5 \
		x11/kde-applications/libkomparediff2 \
		x11/kde-applications/okteta>=0.26.1v0 \
		x11/qt5/qttools \
		x11/qt5/qtwebengine

TEST_IS_INTERACTIVE =	X11

TEST_DEPENDS =		${BUILD_PKGPATH}

TEST_ENV +=	QT_PLUGIN_PATH="${PREFIX}/lib/qt5/plugins"

pre-configure:
	ln -sf ${LOCALBASE}/bin/gtar ${WRKDIR}/bin/tar
# don't pick up llvm-config(1) from base
	ln -sf ${LOCALBASE}/bin/llvm-config ${WRKDIR}/bin/llvm-config

.include <bsd.port.mk>
