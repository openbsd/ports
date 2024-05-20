COMMENT =	drop-down terminal emulator based on KDE Konsole

DISTNAME =	yakuake-${MODKDE_VERSION}
EPOCH =		0

CATEGORIES =	x11 sysutils

HOMEPAGE =	https://kde.org/applications/system/org.kde.yakuake

SITES =		${SITE_KDE:=stable/release-service/${MODKDE_VERSION}/src/}
EXTRACT_SUFX =	.tar.xz

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# usual KDE rules:
# LGPLv2.1+, GPLv2+, GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6Attica KF6ColorScheme
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6DBusAddons KF6GlobalAccel KF6I18n KF6IconThemes
WANTLIB += KF6KIOCore KF6NewStuffCore KF6NewStuffWidgets KF6Notifications
WANTLIB += KF6NotifyConfig KF6Parts KF6StatusNotifierItem KF6WidgetsAddons
WANTLIB += KF6WindowSystem KF6XmlGui KWaylandClient Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6Widgets Qt6Xml X11 c m xkbcommon

MODULES =	x11/kde-applications \
		devel/kf6

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf6/kdoctools

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		devel/kf6/kdoctools \
		x11/gtk+4,-guic \
		x11/kde-applications/konsole

LIB_DEPENDS =	devel/kf6/attica \
		devel/kf6/karchive \
		devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/kglobalaccel \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/knewstuff \
		devel/kf6/knotifications \
		devel/kf6/knotifyconfig \
		devel/kf6/kparts \
		devel/kf6/kstatusnotifieritem \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		x11/kde-plasma/kwayland \
		x11/xkbcommon


.include <bsd.port.mk>
