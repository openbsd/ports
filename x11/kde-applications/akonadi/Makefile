COMMENT =	PIM Storage Service
DISTNAME =	akonadi-${VERSION}
CATEGORIES =	databases productivity

HOMEPAGE =	https://kontact.kde.org

SHARED_LIBS +=	KPim6AkonadiAgentBase     0.0 # 0.0
SHARED_LIBS +=	KPim6AkonadiCore          0.0 # 0.0
SHARED_LIBS +=	KPim6AkonadiPrivate       0.0 # 0.0
SHARED_LIBS +=	KPim6AkonadiWidgets       0.0 # 0.0
SHARED_LIBS +=	KPim6AkonadiXml           0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6Crash
WANTLIB += KF6I18n KF6IconThemes KF6IconWidgets KF6ItemModels
WANTLIB += KF6KIOCore KF6WidgetsAddons KF6XmlGui Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6Sql Qt6Widgets Qt6Xml accounts-qt6
WANTLIB += c kaccounts6 lzma m xml2

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODKF5_L10N_CONFLICT = yes

BUILD_DEPENDS =		archivers/gtar \
			devel/boost \
			misc/shared-mime-info \
			textproc/libxslt

# We build support for MySQL and PostgreSQL but SQLite
# is our default now.
BUILD_DEPENDS +=	databases/mariadb,-server \
			databases/postgresql,-server \
			devel/kf6/kcompletion \
			devel/kf6/kdbusaddons \
			x11/qt6/qtbase,-mysql \
			x11/qt6/qtbase,-psql \
			databases/sqlite3

RUN_DEPENDS =		misc/shared-mime-info \
			x11/qt6/qtbase,-mysql \
			x11/qt6/qtbase,-psql \
			databases/sqlite3

LIB_DEPENDS =		archivers/xz \
			devel/kf6/kcolorscheme \
			devel/kf6/kconfig \
			devel/kf6/kconfigwidgets \
			devel/kf6/kcoreaddons \
			devel/kf6/kcrash \
			devel/kf6/ki18n \
			devel/kf6/kiconthemes \
			devel/kf6/kio \
			devel/kf6/kitemmodels \
			devel/kf6/kwidgetsaddons \
			devel/kf6/kxmlgui \
			net/libaccounts-qt,qt6 \
			textproc/libxml \
			x11/kde-applications/kf6-kaccounts-integration>=${MODKDE_VERSION}

CONFIGURE_ARGS =	-DDATABASE_BACKEND=SQLITE

TEST_IS_INTERACTIVE =	X11

post-extract:
	@ln -sf ${LOCALBASE}/bin/gtar ${WRKDIR}/bin/tar

.include <bsd.port.mk>
