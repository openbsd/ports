COMMENT =	property editing framework with editor widget

VERSION =	3.2.0
DISTNAME =	kproperty-${VERSION}
REVISION =	1

SHARED_LIBS +=  KPropertyCore3            1.1 # 3.0
SHARED_LIBS +=  KPropertyWidgets3         1.1 # 3.0

CATEGORIES =	devel

HOMEPAGE =	http://www.kexi-project.org/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5ConfigGui KF5GuiAddons
WANTLIB += KF5WidgetsAddons Qt5Core Qt5Gui Qt5Widgets Qt5Xml m

SITES =		${SITE_KDE:=Attic/kproperty/src/}
EXTRACT_SUFX =	.tar.xz

MODULES =		devel/cmake \
			devel/kf5

BUILD_DEPENDS =		x11/qt5/qttools \
			devel/kf5/kcoreaddons

LIB_DEPENDS =		devel/kf5/kconfig \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kguiaddons

CONFIGURE_ARGS =	-DBUILD_TESTING=OFF \
			-DBUILD_EXAMPLES=OFF

CONFIGURE_ARGS +=	-DPython_ADDITIONAL_VERSIONS=3
CONFIGURE_ARGS +=	-DCMAKE_POLICY_VERSION_MINIMUM=3.5

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}

TEST_IS_INTERACTIVE =	Yes

.include <bsd.port.mk>
