COMMENT =	add-ons for the kirigami frameworks

VERSION =	0.7.0
DISTNAME =	kirigami-addons-${VERSION}

CATEGORIES =	graphics

HOMEPAGE =	https://invent.kde.org/libraries/kirigami-addons

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+, LGPLv2+, BSD, MIT and GNU FDLv1.2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5I18n Qt5Core Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5QuickControls2 m

MASTER_SITES =	${MASTER_SITE_KDE:=stable/kirigami-addons/}

MODULES =		devel/kf5

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/kf5/kirigami2

RUN_DEPENDS =		devel/kf5/qqc2-desktop-style \
			devel/kf5/kirigami2

LIB_DEPENDS =		devel/kf5/ki18n \
			x11/qt5/qtdeclarative \
			x11/qt5/qtquickcontrols2

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>

