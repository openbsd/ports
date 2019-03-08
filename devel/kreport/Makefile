# $OpenBSD: Makefile,v 1.5 2019/03/08 20:00:41 cwen Exp $

COMMENT =	framework for generation of reports in multiple formats

VERSION =	3.1.0
DISTNAME =	kreport-${VERSION}
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	http://www.kexi-project.org/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

SHARED_LIBS +=  KReport3                  1.0 # 3.0

# GPLv2+, LGPLv2+ and GNU FDLv1.2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5ConfigGui KF5CoreAddons
WANTLIB += KF5WidgetsAddons KPropertyCore3 KPropertyWidgets3 Qt5Core
WANTLIB += Qt5Gui Qt5Network Qt5PrintSupport Qt5Qml Qt5WebKit
WANTLIB += Qt5WebKitWidgets Qt5Widgets Qt5Xml c m

MASTER_SITES =	${MASTER_SITE_KDE:=stable/kreport/src/}}
EXTRACT_SUFX =	.tar.xz

MODULES =		devel/kf5

BUILD_DEPENDS =		shells/bash \
			devel/kf5/kguiaddons \
			x11/qt5/qttools \
			devel/gettext-tools

LIB_DEPENDS =		devel/kf5/kcoreaddons \
			devel/kf5/kconfig \
			devel/kf5/kwidgetsaddons \
			devel/kproperty \
			x11/qt5/qtwebkit

CONFIGURE_ARGS =	-DBUILD_TESTING:Bool=Yes \
			-DBUILD_EXAMPLES:Bool=Yes

#CONFIGURE_ENV =		LDFLAGS="-lc"

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
