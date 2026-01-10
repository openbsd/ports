COMMENT =	add-ons for the kirigami frameworks

DISTNAME =	kirigami-addons-1.10.0

SHARED_LIBS +=	KirigamiAddonsStatefulApp 0.0 # 0.0
SHARED_LIBS +=	KirigamiApp               0.0 # 0.0

CATEGORIES =	graphics

HOMEPAGE =	https://invent.kde.org/libraries/kirigami-addons

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+, LGPLv2+, BSD, MIT and GNU FDLv1.2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6ConfigGui KF6CoreAddons KF6Crash KF6GlobalAccel
WANTLIB += KF6GuiAddons KF6I18n KF6IconThemes Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6OpenGL Qt6Qml Qt6Quick Qt6QuickControls2
WANTLIB += Qt6Widgets m

SITES =			${SITE_KDE:=stable/kirigami-addons/}
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/kf6

BUILD_DEPENDS =		archivers/gtar \
			devel/gettext,-tools \
			devel/kf6/kirigami

RUN_DEPENDS =		devel/kf6/qqc2-desktop-style \
			devel/kf6/kirigami

LIB_DEPENDS =		devel/kf6/ki18n \
			devel/kf6/kcolorscheme \
			devel/kf6/kconfig \
			devel/kf6/kcoreaddons \
			devel/kf6/kcrash \
			devel/kf6/kglobalaccel \
			devel/kf6/kguiaddons \
			devel/kf6/kiconthemes \
			x11/qt6/qtdeclarative

TEST_IS_INTERACTIVE =	X11

post-extract:
	@ln -sf ${LOCALBASE}/bin/gtar ${WRKDIR}/bin/tar

.include <bsd.port.mk>
