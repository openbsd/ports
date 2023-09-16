COMMENT =	PIM Storage Service
DISTNAME =	akonadi-${VERSION}
CATEGORIES =	databases productivity
REVISION =	0

HOMEPAGE =	https://kontact.kde.org

SHARED_LIBS +=  KPim5AkonadiAgentBase     0.0 # 0.0
SHARED_LIBS +=  KPim5AkonadiCore          0.1 # 0.0
SHARED_LIBS +=  KPim5AkonadiPrivate       0.0 # 0.0
SHARED_LIBS +=  KPim5AkonadiWidgets       1.0 # 0.0
SHARED_LIBS +=  KPim5AkonadiXml           0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Crash
WANTLIB += KF5I18n KF5IconThemes KF5ItemModels KF5KIOCore KF5Service
WANTLIB += KF5WidgetsAddons KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Sql Qt5Widgets Qt5Xml accounts-qt5
WANTLIB += c kaccounts lzma m xml2

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODKF5_L10N_CONFLICT = yes

BUILD_DEPENDS =		archivers/gtar \
			devel/boost \
			devel/kf5/kdesignerplugin \
			misc/shared-mime-info \
			textproc/libxslt

# We build support for MySQL and PostgreSQL but SQLite
# is our default now.
BUILD_DEPENDS +=	databases/mariadb,-server \
			databases/postgresql,-server \
			devel/kf5/kcompletion \
			devel/kf5/kdbusaddons  \
			x11/qt5/qtbase,-mysql \
			x11/qt5/qtbase,-psql \
			databases/sqlite3

RUN_DEPENDS =		devel/kf5/kdesignerplugin \
			misc/shared-mime-info \
			x11/qt5/qtbase,-mysql \
			x11/qt5/qtbase,-psql \
			databases/sqlite3

LIB_DEPENDS =		devel/kf5/kconfig \
			devel/kf5/kconfigwidgets \
			devel/kf5/kcoreaddons \
			devel/kf5/kcrash \
			devel/kf5/ki18n \
			devel/kf5/kiconthemes \
			devel/kf5/kio \
			devel/kf5/kitemmodels \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kxmlgui \
			net/libaccounts-qt \
			textproc/libxml \
			x11/kde-applications/kaccounts-integration

CONFIGURE_ARGS =	-DDATABASE_BACKEND=SQLITE

TEST_IS_INTERACTIVE =	X11

post-extract:
	@ln -sf ${LOCALBASE}/bin/gtar ${WRKDIR}/bin/tar

.include <bsd.port.mk>
