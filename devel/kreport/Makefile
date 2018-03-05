# $OpenBSD: Makefile,v 1.1.1.1 2018/03/05 10:29:05 rsadowski Exp $

COMMENT =	framework for generation of reports in multiple formats

VERSION =	3.0.2
DISTNAME =	kreport-${VERSION}

CATEGORIES =	devel

HOMEPAGE =	http://www.kexi-project.org/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

SHARED_LIBS +=  KReport3                  0.0 # 3.0

# GPLv2+, LGPLv2+ and GNU FDLv1.2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5CoreAddons KPropertyCore3 KPropertyWidgets3
WANTLIB += Qt5Core Qt5Gui Qt5Network Qt5PrintSupport Qt5Widgets
WANTLIB += Qt5Xml c m

MASTER_SITES =	${MASTER_SITE_KDE:=stable/kreport/src/}}
EXTRACT_SUFX =	.tar.xz

MODULES =		devel/kf5

BUILD_DEPENDS =		shells/bash \
			devel/gettext-tools

LIB_DEPENDS =		devel/kf5/kcoreaddons \
			devel/kproperty

CONFIGURE_ARGS =	-DBUILD_TESTING:Bool=Yes \
			-DBUILD_EXAMPLES:Bool=Yes

CONFIGURE_ENV =		LDFLAGS="-lc"

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
