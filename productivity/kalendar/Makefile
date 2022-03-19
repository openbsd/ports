USE_WXNEEDED =	Yes

COMMENT =		Akonadi calendar application

DISTNAME =		kalendar-1.0.0

CATEGORIES =		productivity x11

HOMEPAGE =		https://apps.kde.org/kalendar/

MAINTAINER =		Rafael Sadowski <rsadowski@openbsd.org>

# GPLv3+, LGPL-2.1+
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_KDE:=stable/kalendar/}

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5AkonadiAgentBase
WANTLIB += KF5AkonadiCalendar KF5AkonadiContact KF5AkonadiCore
WANTLIB += KF5AkonadiWidgets KF5AkonadiXml KF5Auth KF5AuthCore
WANTLIB += KF5CalendarCore KF5CalendarSupport KF5CalendarUtils
WANTLIB += KF5Codecs KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5Contacts KF5CoreAddons KF5DBusAddons KF5EventViews
WANTLIB += KF5GrantleeTheme KF5I18n KF5IdentityManagement KF5ItemModels
WANTLIB += KF5KIOCore KF5KIOGui KF5Mime KF5Notifications KF5PimTextEdit
WANTLIB += KF5Service KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Location Qt5Network
WANTLIB += Qt5Positioning Qt5PositioningQuick Qt5PrintSupport
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5QuickControls2 Qt5Svg
WANTLIB += Qt5Widgets Qt5Xml X11 c m

MODULES =		devel/kf5

CONFIGURE_STYLE =	cmake

BUILD_DEPENDS =		devel/boost \
			devel/gettext,-tools \
			devel/kf5/kcompletion \
			devel/kf5/kiconthemes \
			devel/kf5/kirigami2 \
			devel/kf5/kitemviews \
			devel/kf5/ktextwidgets \
			devel/kf5/qqc2-desktop-style \
			devel/kf5/solid \
			devel/kf5/sonnet \
			misc/shared-mime-info

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/kf5/kirigami2 \
			devel/kf5/qqc2-desktop-style \
			x11/gtk+3,-guic

LIB_DEPENDS =		devel/kf5/kauth \
			devel/kf5/kcodecs \
			devel/kf5/kconfig \
			devel/kf5/kconfigwidgets \
			devel/kf5/kcontacts \
			devel/kf5/kcoreaddons \
			devel/kf5/kdbusaddons \
			devel/kf5/ki18n\
			devel/kf5/kio \
			devel/kf5/kitemmodels \
			devel/kf5/knotifications \
			devel/kf5/kservice \
			devel/kf5/kwidgetsaddons  \
			devel/kf5/kxmlgui \
			x11/kde-applications/akonadi \
			x11/kde-applications/akonadi-calendar \
			x11/kde-applications/calendarsupport \
			x11/kde-applications/eventviews \
			x11/kde-applications/grantleetheme \
			x11/kde-applications/kcalutils \
			x11/kde-applications/kidentitymanagement \
			x11/kde-applications/kmime \
			x11/kde-applications/kpimtextedit \
			x11/qt5/qtdeclarative \
			x11/qt5/qtlocation \
			x11/qt5/qtsvg



.include <bsd.port.mk>
