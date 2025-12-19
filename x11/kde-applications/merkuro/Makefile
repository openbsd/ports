USE_NOBTCFI =	Yes
USE_WXNEEDED =	Yes

COMMENT =	calendar email todo and task application

DISTNAME =	merkuro-${VERSION}
REVISION =	0

CATEGORIES =	productivity x11

HOMEPAGE =	https://apps.kde.org/merkuro.calendar/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

SHARED_LIBS +=	MerkuroComponents         0.0 # 0.0
SHARED_LIBS +=	merkuro_contact           0.0 # 0.0

# GPLv3+, LGPL-2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6CalendarCore KF6Codecs KF6ColorScheme
WANTLIB += KF6Completion KF6ConfigCore KF6ConfigGui KF6ConfigWidgets
WANTLIB += KF6Contacts KF6CoreAddons KF6Crash KF6DBusAddons KF6GuiAddons
WANTLIB += KF6Holidays KF6I18n KF6I18nQml KF6IconThemes KF6ItemModels
WANTLIB += KF6KIOCore KF6Notifications KF6TextAutoCorrectionCore
WANTLIB += KF6TextAutoCorrectionWidgets KF6TextCustomEditor KF6TextTemplate
WANTLIB += KF6WidgetsAddons KF6WindowSystem KF6XmlGui KPim6AkonadiCalendar
WANTLIB += KPim6AkonadiCalendarCore KPim6AkonadiContactCore KPim6AkonadiContactWidgets
WANTLIB += KPim6AkonadiCore KPim6AkonadiMime KPim6AkonadiPrivate
WANTLIB += KPim6AkonadiSearchPIM KPim6AkonadiWidgets KPim6CalendarUtils
WANTLIB += KPim6GrantleeTheme KPim6IMAP KPim6IdentityManagementCore
WANTLIB += KPim6IdentityManagementQuick KPim6IdentityManagementWidgets
WANTLIB += KPim6Libkdepim KPim6Libkleo KPim6MailCommon KPim6MailTransport
WANTLIB += KPim6Mbox KPim6MessageComposer KPim6MessageCore KPim6Mime
WANTLIB += KPim6MimeTreeParserCore KPim6PimCommon KPim6PimCommonAkonadi
WANTLIB += KPim6TextEdit KirigamiAddonsStatefulApp Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6OpenGL Qt6Qml Qt6QmlMeta Qt6QmlModels
WANTLIB += Qt6QmlWorkerScript Qt6Quick Qt6QuickControls2 Qt6Widgets
WANTLIB += Qt6Xml X11 assuan c gpgme gpgmepp m qgpgmeqt6

BUILD_DEPENDS =	devel/boost \
		devel/gettext,-tools \
		devel/kf6/kirigami \
		devel/kf6/kitemviews \
		devel/kf6/kservice \
		devel/kf6/ktextwidgets \
		devel/kf6/qqc2-desktop-style \
		devel/kf6/solid \
		devel/kf6/sonnet \
		misc/shared-mime-info \
		x11/kde-plasma/libplasma \
		x11/qt6/qtlocation

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/kf6/kirigami \
		devel/kf6/qqc2-desktop-style \
		x11/gtk+4,-guic \
		x11/kde-plasma/libplasma \
		x11/qt6/qtlocation

LIB_DEPENDS =	devel/kf6/kcalendarcore \
		devel/kf6/kcodecs \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcontacts \
		devel/kf6/kcoreaddons \
		devel/kf6/kdbusaddons \
		devel/kf6/ki18n\
		devel/kf6/kio \
		devel/kf6/kitemmodels \
		devel/kf6/ktexttemplate \
		devel/kf6/kguiaddons \
		devel/kf6/kiconthemes \
		devel/kf6/kholidays \
		devel/kf6/kwidgetsaddons \
		devel/kf6/knotifications \
		graphics/kirigami-addons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		security/gpgme \
		security/libassuan \
		textproc/ktextaddons \
		devel/kf6/kcrash \
		security/qgpgme \
		x11/kde-applications/akonadi-search>=${VERSION} \
		x11/kde-applications/akonadi-calendar>=${VERSION} \
		x11/kde-applications/akonadi-contacts>=${VERSION} \
		x11/kde-applications/akonadi-mime>=${VERSION} \
		x11/kde-applications/akonadi>=${VERSION} \
		x11/kde-applications/grantleetheme>=${VERSION} \
		x11/kde-applications/kcalutils>=${VERSION} \
		x11/kde-applications/kidentitymanagement>=${VERSION} \
		x11/kde-applications/kimap>=${VERSION} \
		x11/kde-applications/kmailtransport>=${VERSION} \
		x11/kde-applications/kmbox>=${VERSION} \
		x11/kde-applications/kmime>=${VERSION} \
		x11/kde-applications/kpimtextedit>=${VERSION} \
		x11/kde-applications/libkdepim>=${VERSION} \
		x11/kde-applications/libkleo>=${VERSION} \
		x11/kde-applications/mailcommon>=${VERSION} \
		x11/kde-applications/messagelib>=${VERSION} \
		x11/kde-applications/mimetreeparser>=${VERSION} \
		x11/kde-applications/pimcommon>=${VERSION} \
		x11/qt6/qtdeclarative

.include <bsd.port.mk>
