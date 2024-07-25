USE_WXNEEDED =	Yes

COMMENT =	calendar email todo and task application

DISTNAME =	merkuro-${VERSION}

CATEGORIES =	productivity x11

HOMEPAGE =	https://apps.kde.org/merkuro.calendar/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv3+, LGPL-2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6CalendarCore KF6Codecs KF6ColorScheme
WANTLIB += KF6Completion KF6ConfigCore KF6ConfigGui KF6ConfigWidgets
WANTLIB += KF6Contacts KF6CoreAddons KF6DBusAddons KF6I18n KF6ItemModels
WANTLIB += KF6KIOCore KF6TextAutoCorrectionCore KF6TextAutoCorrectionWidgets
WANTLIB += KF6TextCustomEditor KF6TextTemplate KF6WidgetsAddons
WANTLIB += KF6WindowSystem KF6XmlGui KPim6AkonadiCalendar KPim6AkonadiContactCore
WANTLIB += KPim6AkonadiContactWidgets KPim6AkonadiCore KPim6AkonadiMime
WANTLIB += KPim6AkonadiWidgets KPim6CalendarUtils KPim6GrantleeTheme
WANTLIB += KPim6IMAP KPim6IdentityManagementCore KPim6IdentityManagementQuick
WANTLIB += KPim6IdentityManagementWidgets KPim6Libkdepim KPim6Libkleo
WANTLIB += KPim6MailCommon KPim6MailTransport KPim6Mbox KPim6MessageComposer
WANTLIB += KPim6MessageCore KPim6Mime KPim6MimeTreeParserCore
WANTLIB += KPim6PimCommon KPim6PimCommonAkonadi KPim6TextEdit
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL Qt6Qml
WANTLIB += Qt6QmlModels Qt6Quick Qt6QuickControls2 Qt6Svg Qt6Widgets
WANTLIB += Qt6Xml X11 assuan c gpgme gpgmepp m qgpgmeqt6

BUILD_DEPENDS =	devel/boost \
		devel/gettext,-tools \
		devel/kf6/kiconthemes \
		devel/kf6/kirigami \
		devel/kf6/kitemviews \
		devel/kf6/knotifications \
		devel/kf6/kservice \
		devel/kf6/ktextwidgets \
		x11/kde-plasma/libplasma \
		devel/kf6/qqc2-desktop-style \
		devel/kf6/solid \
		devel/kf6/sonnet \
		graphics/kirigami-addons \
		misc/shared-mime-info

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/kf6/kirigami \
		x11/kde-plasma/libplasma \
		devel/kf6/qqc2-desktop-style \
		graphics/kirigami-addons \
		x11/gtk+4,-guic

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
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		security/gpgme \
		security/libassuan \
		textproc/ktextaddons \
		security/gpgme,-qt \
		x11/kde-applications/akonadi-calendar>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/akonadi-contacts>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/akonadi-mime>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/akonadi>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/grantleetheme>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kcalutils>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kidentitymanagement>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kimap>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kmailtransport>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kmbox>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kmime>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/kpimtextedit>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/libkdepim>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/libkleo>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/mailcommon>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/messagelib>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/mimetreeparser>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/pimcommon>=${MODKDE_GEAR_VERSION} \
		x11/qt6/qtdeclarative \
		x11/qt6/qtsvg

.include <bsd.port.mk>
