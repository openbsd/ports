USE_WXNEEDED =		Yes

COMMENT =	IDE for C, C++, Python, QML/JavaScript and PHP

CATEGORIES =	devel x11
DISTNAME =	kdevelop-${MODKDE_GEAR_VERSION}

HOMEPAGE =	https://www.kdevelop.org/

SHARED_LIBS +=  KDevPlatformDebugger      6.0 # 6.0
SHARED_LIBS +=  KDevPlatformDocumentation 4.0 # 6.0
SHARED_LIBS +=  KDevPlatformInterfaces    4.0 # 6.0
SHARED_LIBS +=  KDevPlatformLanguage      8.0 # 6.0
SHARED_LIBS +=  KDevPlatformOutputView    3.0 # 6.0
SHARED_LIBS +=  KDevPlatformProject       4.0 # 6.0
SHARED_LIBS +=  KDevPlatformSerialization 6.0 # 6.0
SHARED_LIBS +=  KDevPlatformShell         7.0 # 6.0
SHARED_LIBS +=  KDevPlatformSublime       4.0 # 6.0
SHARED_LIBS +=  KDevPlatformTests         5.0 # 6.0
SHARED_LIBS +=  KDevPlatformUtil          4.0 # 6.0
SHARED_LIBS +=  KDevPlatformVcs           4.0 # 6.0
SHARED_LIBS +=  KDevClangPrivate          4.0 # 6.0
SHARED_LIBS +=  KDevCMakeCommon           3.0 # 6.0
SHARED_LIBS +=  KDevCompileAnalyzerCommon 1.0 # 6.0

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+, LGPLv2.1+, GNU FDLv1.2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6Attica KF6Bookmarks
WANTLIB += KF6BookmarksWidgets KF6Codecs KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6GuiAddons KF6I18n KF6IconThemes KF6IconWidgets
WANTLIB += KF6ItemModels KF6ItemViews KF6JobWidgets KF6KCMUtils
WANTLIB += KF6KCMUtilsCore KF6KCMUtilsQuick KF6KIOCore KF6KIOFileWidgets
WANTLIB += KF6KIOGui KF6KIOWidgets KF6NewStuffCore KF6NewStuffWidgets
WANTLIB += KF6Notifications KF6NotifyConfig KF6Parts KF6Purpose
WANTLIB += KF6PurposeWidgets KF6Runner KF6Service KF6Solid KF6SonnetUi
WANTLIB += KF6SyntaxHighlighting KF6TextEditor KF6TextTemplate
WANTLIB += KF6TextWidgets KF6ThreadWeaver KF6WidgetsAddons KF6WindowSystem
WANTLIB += KF6XmlGui Plasma Qt6Concurrent Qt6Core Qt6Core5Compat
WANTLIB += Qt6DBus Qt6Gui Qt6Help Qt6Network Qt6OpenGL Qt6Positioning
WANTLIB += Qt6PrintSupport Qt6Qml Qt6QmlModels Qt6Quick Qt6Sql
WANTLIB += Qt6WebChannel Qt6WebEngineCore Qt6WebEngineWidgets
WANTLIB += Qt6Widgets Qt6Xml X11 apr-1 aprutil-1 c komparediff2
WANTLIB += m svn_client-1 svn_fs-1 svn_ra-1 svn_repos-1 svn_subr-1
WANTLIB += svn_wc-1



SITES =	${SITE_KDE:=stable/release-service/${MODKDE_GEAR_VERSION}/src/}
EXTRACT_SUFX = .tar.xz

MODULES =	x11/kde \
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
		x11/kde-applications/kate \
		x11/kde-applications/konsole

LIB_DEPENDS =	${MODCLANG_LIB_DEPENDS} \
		devel/apr \
		devel/apr-util \
		devel/kf6/attica \
		devel/kf6/karchive \
		devel/kf6/kbookmarks \
		devel/kf6/kcmutils \
		devel/kf6/kcodecs \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kitemmodels \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/knewstuff \
		devel/kf6/knotifications \
		devel/kf6/knotifyconfig \
		devel/kf6/kparts \
		devel/kf6/krunner \
		devel/kf6/kservice \
		devel/kf6/ktexteditor \
		devel/kf6/ktexttemplate \
		devel/kf6/ktextwidgets \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/purpose \
		devel/kf6/solid \
		devel/kf6/sonnet \
		devel/kf6/syntax-highlighting \
		devel/kf6/threadweaver \
		devel/subversion \
		x11/kde-applications/libkomparediff2>=${MODKDE_GEAR_VERSION} \
		x11/kde-plasma/libplasma \
		x11/qt6/qt5compat \
		x11/qt6/qtdeclarative \
		x11/qt6/qtpositioning \
		x11/qt6/qttools \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine

TEST_IS_INTERACTIVE =	X11

TEST_DEPENDS =		${BUILD_PKGPATH}

TEST_ENV +=		QT_PLUGIN_PATH="${PREFIX}/lib/qt6/plugins"

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_KSysGuard=ON \
			-DClang_DIR=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib/cmake/clang

pre-configure:
	ln -sf ${LOCALBASE}/bin/gtar ${WRKDIR}/bin/tar

.include <bsd.port.mk>
