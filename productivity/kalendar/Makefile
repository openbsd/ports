BROKEN = Will move to KDE gear as merkuro soon

USE_WXNEEDED =	Yes

COMMENT =	Akonadi calendar application

# XXX Renamed to Merkuro
VERSION =	23.04.3
DISTNAME =	kalendar-${VERSION}

CATEGORIES =	productivity x11

HOMEPAGE =	https://apps.kde.org/kalendar/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv3+, LGPL-2.1+
PERMIT_PACKAGE =	Yes

SITES =		${SITE_KDE:=stable/release-service/${VERSION}/src/}

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5Auth KF5AuthCore
WANTLIB += KF5CalendarCore KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5Contacts KF5CoreAddons
WANTLIB += KF5DBusAddons KF5I18n KF5ItemModels KF5KIOCore KF5PimCommon
WANTLIB += KF5PimCommonAkonadi KF5Service KF5TextAutoCorrectionCore
WANTLIB += KF5TextAutoCorrectionWidgets KF5TextEditTextToSpeech
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui KPim5AkonadiAgentBase
WANTLIB += KPim5AkonadiCalendar KPim5AkonadiContact KPim5AkonadiCore
WANTLIB += KPim5AkonadiMime KPim5AkonadiWidgets KPim5AkonadiXml
WANTLIB += KPim5CalendarSupport KPim5CalendarUtils KPim5EventViews
WANTLIB += KPim5GrantleeTheme KPim5IMAP KPim5IdentityManagement
WANTLIB += KPim5IdentityManagementWidgets KPim5Libkdepim KPim5Libkleo
WANTLIB += KPim5MailCommon KPim5MessageComposer KPim5MessageCore
WANTLIB += KPim5MessageViewer KPim5Mime KPim5MimeTreeParser KPim5TextEdit
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5QuickControls2 Qt5Svg
WANTLIB += Qt5Widgets Qt5Xml X11 assuan c gpgme gpgmepp m qgpgme

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
		graphics/kirigami-addons \
		misc/shared-mime-info

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/kf5/kirigami2 \
		devel/kf5/plasma-framework \
		devel/kf5/qqc2-desktop-style \
		graphics/kirigami-addons \
		x11/gtk+4,-guic

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
