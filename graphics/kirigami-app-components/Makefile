COMMENT =	Kirigami application components

DISTNAME =	kirigami-app-components-1.0.2

CATEGORIES =	graphics

HOMEPAGE =	https://invent.kde.org/libraries/kirigami-app-components

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

SHARED_LIBS +=	KirigamiActionCollection  0.0 # 0.0

# FSFAP, BSD and CC0-1.0
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6ConfigCore KF6ConfigGui KF6GuiAddons
WANTLIB += KF6I18n Qt6Core Qt6Gui Qt6Network Qt6OpenGL Qt6Qml
WANTLIB += Qt6Quick Qt6QuickControls2 m

SITES =			${SITE_KDE:=stable/kirigami-app-components/}
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/kf6

BUILD_DEPENDS =		devel/kf6/kirigami

RUN_DEPENDS =		devel/kf6/kirigami

LIB_DEPENDS =		devel/kf6/ki18n \
			devel/kf6/kconfig \
			devel/kf6/kguiaddons \
			x11/qt6/qtdeclarative

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
