COMMENT =	scanning application for KDE

DISTNAME =	skanlite-${MODKDE_GEAR_VERSION}

CATEGORIES =	graphics

HOMEPAGE =	https://kde.org/applications/graphics/org.kde.skanlite

SITES =		${SITE_KDE:=stable/release-service/${MODKDE_GEAR_VERSION}/src/}
EXTRACT_SUFX =	.tar.xz

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+, GNU FDLv1.3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5JobWidgets KF5KIOCore KF5KIOGui KF5KIOWidgets
WANTLIB += KF5Sane KF5Service KF5Solid KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Widgets Qt5Xml X11 c m

MODULES =	x11/kde

MODKDE_KF5 =	Yes

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf5/kdoctools

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		x11/kde-applications/libksane>=${MODKDE_GEAR_VERSION}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
