# $OpenBSD: Makefile,v 1.1.1.1 2020/06/13 05:29:56 rsadowski Exp $

COMMENT =	PIM Storage Service
DISTNAME =	akonadi-${VERSION}
CATEGORIES =	databases productivity

HOMEPAGE =	https://kontact.kde.org/

SHARED_LIBS +=  KF5AkonadiAgentBase       0.0 # 5.6
SHARED_LIBS +=  KF5AkonadiCore            0.0 # 5.6
SHARED_LIBS +=  KF5AkonadiPrivate         0.0 # 5.6
SHARED_LIBS +=  KF5AkonadiWidgets         0.0 # 5.6
SHARED_LIBS +=  KF5AkonadiXml             0.0 # 5.6

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5DBusAddons KF5I18n KF5IconThemes KF5ItemModels
WANTLIB += KF5ItemViews KF5KIOCore KF5Service KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Sql Qt5Widgets Qt5Xml c m sqlite3
WANTLIB += xml2

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

MODKF5_L10N_CONFLICT = yes

MODULES +=		x11/kde-applications

BUILD_DEPENDS =		devel/boost \
			devel/kf5/kdesignerplugin \
			misc/shared-mime-info \
			textproc/libxslt

# We build support for MySQL and PostgreSQL but SQLite
# is our default now.
BUILD_DEPENDS =		databases/mariadb,-server \
			databases/postgresql,-server \
			x11/qt5/qtbase,-mysql \
			x11/qt5/qtbase,-psql

RUN_DEPENDS =		devel/kf5/kdesignerplugin \
			misc/shared-mime-info

LIB_DEPENDS =		databases/sqlite3 \
			devel/kf5/kauth \
			devel/kf5/kcodecs \
			devel/kf5/kcompletion \
			devel/kf5/kconfig \
			devel/kf5/kconfigwidgets \
			devel/kf5/kcoreaddons \
			devel/kf5/kcrash \
			devel/kf5/kdbusaddons  \
			devel/kf5/ki18n \
			devel/kf5/kiconthemes \
			devel/kf5/kio \
			devel/kf5/kitemmodels \
			devel/kf5/kitemviews \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kwindowsystem \
			devel/kf5/kxmlgui \
			textproc/libxml

CONFIGURE_ARGS =	-DDATABASE_BACKEND=SQLITE

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
