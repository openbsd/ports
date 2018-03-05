# $OpenBSD: Makefile,v 1.1.1.1 2018/03/05 10:07:57 rsadowski Exp $

COMMENT =	property editing framework with editor widget

VERSION =	3.0.2
DISTNAME =	kproperty-${VERSION}

SHARED_LIBS +=  KPropertyCore3            0.0 # 3.0
SHARED_LIBS +=  KPropertyWidgets3         0.0 # 3.0

CATEGORIES =	devel

HOMEPAGE =	http://www.kexi-project.org/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets Qt5Xml
WANTLIB += c m

MASTER_SITES =	${MASTER_SITE_KDE:=stable/kproperty/src/}}
EXTRACT_SUFX =	.tar.xz

MODULES =		devel/cmake \
			lang/python \
			devel/kf5

BUILD_DEPENDS =		devel/kf5/kconfig \
			devel/kf5/kcoreaddons \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kguiaddons


CONFIGURE_ARGS =	-DBUILD_TESTING:Bool=Yes \
			-DBUILD_EXAMPLES:Bool=Yes

CONFIGURE_ENV =		LDFLAGS="-lc"

TEST_IS_INTERACTIVE =	Yes

.include <bsd.port.mk>
