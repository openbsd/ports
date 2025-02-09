COMMENT =	scanning application for KDE

DISTNAME =	skanlite-${MODKDE_GEAR_VERSION}

CATEGORIES =	graphics

HOMEPAGE =	https://kde.org/applications/graphics/org.kde.skanlite

SITES =		${SITE_KDE:=stable/release-service/${MODKDE_GEAR_VERSION}/src/}
EXTRACT_SUFX =	.tar.xz

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+, GNU FDLv1.3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6I18n KF6JobWidgets KF6KIOCore KF6KIOGui
WANTLIB += KF6KIOWidgets KF6Service KF6Solid KF6WidgetsAddons
WANTLIB += KF6XmlGui KSaneWidgets6 Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6Widgets Qt6Xml c m

MODULES =	x11/kde

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf6/kdoctools

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		x11/kde-applications/libksane>=${MODKDE_GEAR_VERSION}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
