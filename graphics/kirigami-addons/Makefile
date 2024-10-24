COMMENT =	add-ons for the kirigami frameworks

VERSION =	1.4.0
DISTNAME =	kirigami-addons-${VERSION}

SHARED_LIBS +=	KirigamiAddonsStatefulApp 0.0 # 0.0

CATEGORIES =	graphics

HOMEPAGE =	https://invent.kde.org/libraries/kirigami-addons

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+, LGPLv2+, BSD, MIT and GNU FDLv1.2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6ConfigCore KF6ConfigGui KF6CoreAddons
WANTLIB += KF6GlobalAccel KF6GuiAddons KF6I18n Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6OpenGL Qt6Qml Qt6QmlModels Qt6Quick
WANTLIB += Qt6QuickControls2 Qt6Widgets m

SITES =			${SITE_KDE:=stable/kirigami-addons/}
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/kf6

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/kf6/kirigami

RUN_DEPENDS =		devel/kf6/qqc2-desktop-style \
			devel/kf6/kirigami

LIB_DEPENDS =		devel/kf6/ki18n \
			devel/kf6/kconfig \
			devel/kf6/kcoreaddons \
			devel/kf6/kglobalaccel \
			devel/kf6/kguiaddons \
			x11/qt6/qtdeclarative

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
