USE_WXNEEDED =	Yes

COMMENT =	Akonadi calendar application

DISTNAME =	kalendar-${MODKDE_VERSION}

CATEGORIES =	productivity x11

HOMEPAGE =	https://apps.kde.org/kalendar/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv3+, LGPL-2.1+
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${MASTER_SITE_KDE:=stable/release-service/${MODKDE_VERSION}/src/}

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5AkonadiAgentBase
WANTLIB += KF5AkonadiCalendar KF5AkonadiContact KF5AkonadiCore
WANTLIB += KF5AkonadiMime KF5AkonadiWidgets KF5AkonadiXml KF5Auth
WANTLIB += KF5AuthCore KF5CalendarCore KF5CalendarSupport KF5CalendarUtils
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5Contacts KF5CoreAddons KF5DBusAddons
WANTLIB += KF5EventViews KF5GrantleeTheme KF5I18n KF5IMAP KF5IdentityManagement
WANTLIB += KF5IdentityManagementWidgets KF5ItemModels KF5KIOCore
WANTLIB += KF5Libkdepim KF5Libkleo KF5MailCommon KF5MessageComposer
WANTLIB += KF5MessageCore KF5MessageViewer KF5Mime KF5MimeTreeParser
WANTLIB += KF5PimCommon KF5PimCommonAkonadi KF5PimCommonAutoCorrection
WANTLIB += KF5PimTextEdit KF5Service KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5PrintSupport Qt5Qml Qt5QmlModels Qt5Quick Qt5QuickControls2
WANTLIB += Qt5Svg Qt5Widgets Qt5Xml X11 assuan c gpgme gpgmepp
WANTLIB += m qgpgme

WANTLIB += lib/inotify/inotify

MODULES =	x11/kde-applications \
		devel/kf5

BUILD_DEPENDS =	devel/boost \
		devel/gettext,-tools \
		devel/kf5/kcompletion \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kirigami2 \
		devel/kf5/kitemviews \
		devel/kf5/knotifications \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/plasma-framework \
		devel/kf5/qqc2-desktop-style \
		devel/kf5/solid \
		devel/kf5/sonnet \
		misc/shared-mime-info

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/kf5/kirigami2 \
		devel/kf5/plasma-framework \
		devel/kf5/qqc2-desktop-style \
		x11/gtk+3,-guic

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/kdbusaddons \
		devel/kf5/ki18n\
		devel/kf5/kitemmodels \
		devel/kf5/kwidgetsaddons  \
		devel/kf5/kxmlgui \
		devel/libinotify \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-calendar \
		x11/kde-applications/pimcommon \
		x11/kde-applications/calendarsupport \
		x11/kde-applications/mailcommon \
		x11/kde-applications/eventviews \
		x11/kde-applications/grantleetheme \
		x11/kde-applications/kcalutils \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/kmime \
		x11/qt5/qtdeclarative \
		x11/qt5/qtsvg

.include <bsd.port.mk>
