# $OpenBSD: Makefile,v 1.15 2019/07/12 20:51:12 sthen Exp $

COMMENT =		template and text document library for Qt4
PKG_VERSION =		0.5.1
REVISION =		5
PLIST_VERSION =		${PKG_VERSION:R}
DISTNAME =		grantlee-${PKG_VERSION}
CATEGORIES =		devel x11
HOMEPAGE =		https://github.com/steveire/grantlee

MAINTAINER =		KDE porting team <openbsd-kde@googlegroups.com>
PORTROACH =		limit:^[0-4].*

SHARED_LIBS =		grantlee_core		1.0
SHARED_LIBS +=		grantlee_gui		1.0

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} lib/qt4/QtGui lib/qt4/QtScript c m

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		http://downloads.grantlee.org/ \
			http://www.loegria.net/grantlee/

MODULES =		devel/cmake x11/qt4

TEST_DEPENDS =		${BUILD_PKGPATH}
TEST_IS_INTERACTIVE =	X11

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen:Bool=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_LCov:Bool=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_Cccc:Bool=Yes

SUBST_VARS =		PLIST_VERSION

.include <bsd.port.mk>
