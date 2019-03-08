# $OpenBSD: Makefile,v 1.3 2019/03/08 20:00:41 cwen Exp $

COMMENT =	property editing framework with editor widget

VERSION =	3.1.0
DISTNAME =	kproperty-${VERSION}
REVISION =	0

SHARED_LIBS +=  KPropertyCore3            1.0 # 3.0
SHARED_LIBS +=  KPropertyWidgets3         1.0 # 3.0

CATEGORIES =	devel

HOMEPAGE =	http://www.kexi-project.org/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5ConfigGui KF5GuiAddons
WANTLIB += KF5WidgetsAddons Qt5Core Qt5Gui Qt5Widgets Qt5Xml c
WANTLIB += m

MASTER_SITES =	${MASTER_SITE_KDE:=stable/kproperty/src/}}
EXTRACT_SUFX =	.tar.xz

MODULES =		devel/cmake \
			lang/python \
			devel/kf5

BUILD_DEPENDS =		x11/qt5/qttools \
			devel/kf5/kcoreaddons

LIB_DEPENDS =		devel/kf5/kconfig \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kguiaddons

CONFIGURE_ARGS =	-DBUILD_TESTING:Bool=Yes \
			-DBUILD_EXAMPLES:Bool=Yes

TEST_IS_INTERACTIVE =	Yes

.include <bsd.port.mk>
