COMMENT =	add-ons for the kirigami frameworks

VERSION =	1.3.0
DISTNAME =	kirigami-addons-${VERSION}

CATEGORIES =	graphics

HOMEPAGE =	https://invent.kde.org/libraries/kirigami-addons

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+, LGPLv2+, BSD, MIT and GNU FDLv1.2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6ConfigCore KF6I18n Qt6Core
WANTLIB += Qt6Gui Qt6Network Qt6OpenGL Qt6Qml Qt6QmlModels Qt6Quick
WANTLIB += Qt6QuickControls2 m

SITES =			${SITE_KDE:=stable/kirigami-addons/}
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/kf6

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/kf6/kirigami

RUN_DEPENDS =		devel/kf6/qqc2-desktop-style \
			devel/kf6/kirigami

LIB_DEPENDS =		devel/kf6/ki18n \
			devel/kf6/kconfig \
			x11/qt6/qtdeclarative

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
