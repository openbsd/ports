COMMENT =	archiving Tool
DISTNAME =	ark-${VERSION}
CATEGORIES =	archivers

SHARED_LIBS +=  kerfuffle                 9.1 # 17.08

WANTLIB += ${COMPILER_LIBCXX} GL KF6Bookmarks KF6BreezeIcons KF6ColorScheme
WANTLIB += KF6Completion KF6ConfigCore KF6ConfigGui KF6ConfigWidgets
WANTLIB += KF6CoreAddons KF6Crash KF6DBusAddons KF6FileMetaData
WANTLIB += KF6I18n KF6IconThemes KF6ItemViews KF6JobWidgets KF6KIOCore
WANTLIB += KF6KIOFileWidgets KF6KIOGui KF6KIOWidgets KF6Parts
WANTLIB += KF6Pty KF6Service KF6Solid KF6WidgetsAddons KF6WindowSystem
WANTLIB += KF6XmlGui Qt6Concurrent Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6Widgets Qt6Xml X11 archive c m z zip

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

BUILD_DEPENDS =	archivers/bzip2 \
		archivers/lzo2 \
		archivers/p7zip \
		archivers/rzip \
		archivers/unrar \
		archivers/zstd

RUN_DEPENDS =	archivers/bzip2 \
		archivers/unrar \
		archivers/p7zip \
		archivers/lzo2 \
		archivers/rzip \
		archivers/zstd \
		misc/shared-mime-info

LIB_DEPENDS =	archivers/libarchive \
		archivers/libzip \
		devel/kf6/kbookmarks \
		devel/kf6/kcolorscheme \
		devel/kf6/breeze-icons \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/kfilemetadata \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/kparts \
		devel/kf6/kpty \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/solid

# for tests
PORTHOME =	${WRKDIR}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
