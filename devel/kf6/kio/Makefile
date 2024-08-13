COMMENT =	network transparent access to files and data in KDE
DISTNAME =	kio-${VERSION}

SHARED_LIBS +=  KF6KIOCore                0.0 # 0.0
SHARED_LIBS +=  KF6KIOFileWidgets         0.0 # 0.0
SHARED_LIBS +=  KF6KIOGui                 0.0 # 0.0
SHARED_LIBS +=  KF6KIOWidgets             0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6AuthCore KF6Bookmarks
WANTLIB += KF6BookmarksWidgets KF6ColorScheme KF6Completion KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6Crash
WANTLIB += KF6DBusAddons KF6DocTools KF6GuiAddons KF6I18n KF6IconThemes
WANTLIB += KF6IconWidgets KF6ItemViews KF6JobWidgets KF6Service
WANTLIB += KF6Solid KF6Wallet KF6WidgetsAddons KF6WindowSystem
WANTLIB += Qt6Concurrent Qt6Core Qt6Core5Compat Qt6DBus Qt6Gui
WANTLIB += Qt6Network Qt6Widgets Qt6Xml X11 c exslt m xkbcommon
WANTLIB += xml2 xslt

BUILD_DEPENDS =	archivers/gtar \
		devel/gettext,-tools \
		devel/kf6/kded>=${MODKF6_VERSION} \
		devel/kf6/kdoctools>=${MODKF6_VERSION}

RUN_DEPENDS =	devel/kf6/kdoctools>=${MODKF6_VERSION} \
		devel/kf6/kded>=${MODKF6_VERSION} \
		devel/desktop-file-utils

LIB_DEPENDS =	devel/kf6/karchive>=${MODKF6_VERSION} \
		devel/kf6/kauth>=${MODKF6_VERSION} \
		devel/kf6/kbookmarks>=${MODKF6_VERSION} \
		devel/kf6/kcolorscheme>=${MODKF6_VERSION} \
		devel/kf6/kcompletion>=${MODKF6_VERSION} \
		devel/kf6/kconfig>=${MODKF6_VERSION} \
		devel/kf6/kconfigwidgets>=${MODKF6_VERSION} \
		devel/kf6/kcoreaddons>=${MODKF6_VERSION} \
		devel/kf6/kcrash>=${MODKF6_VERSION} \
		devel/kf6/kdbusaddons>=${MODKF6_VERSION} \
		devel/kf6/kdoctools>=${MODKF6_VERSION} \
		devel/kf6/ki18n>=${MODKF6_VERSION} \
		devel/kf6/kiconthemes>=${MODKF6_VERSION} \
		devel/kf6/kitemviews>=${MODKF6_VERSION} \
		devel/kf6/kjobwidgets>=${MODKF6_VERSION} \
		devel/kf6/kservice>=${MODKF6_VERSION} \
		devel/kf6/kwallet>=${MODKF6_VERSION} \
		devel/kf6/kwidgetsaddons>=${MODKF6_VERSION} \
		devel/kf6/kguiaddons>=${MODKF6_VERSION} \
		devel/kf6/kwindowsystem>=${MODKF6_VERSION} \
		devel/kf6/solid>=${MODKF6_VERSION} \
		x11/qt6/qt5compat \
		textproc/libxml \
		textproc/libxslt \
		x11/xkbcommon

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_ACL=ON

# TODO: many tests fail (need something more in TEST_DEPENDS?)
PORTHOME =		${WRKDIR}
TEST_IS_INTERACTIVE =	X11
TEST_DEPENDS =		${BUILD_PKGPATH}

DEBUG_PACKAGES =	${BUILD_PACKAGES}

post-extract:
	@ln -sf ${LOCALBASE}/bin/gtar ${WRKDIR}/bin/tar

.include <bsd.port.mk>
