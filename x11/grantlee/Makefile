# $OpenBSD: Makefile,v 1.4 2015/08/13 22:35:15 zhuk Exp $

SHARED_ONLY =		Yes
COMMENT =		template and text document library for Qt4
PKG_VERSION =		0.5.0
PLIST_VERSION =		${PKG_VERSION:R}
DISTNAME =		grantlee-${PKG_VERSION}
CATEGORIES =		devel x11
HOMEPAGE =		http://www.gitorious.org/grantlee/
REVISION =		0

MAINTAINER =		KDE porting team <openbsd-kde@googlegroups.com>
PORTROACH =		limit:^[0-4].*

SHARED_LIBS =		grantlee_core		1.0
SHARED_LIBS +=		grantlee_gui		1.0

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://downloads.grantlee.org/ \
			http://www.loegria.net/grantlee/

WANTLIB =		c m stdc++
WANTLIB +=		lib/qt4/QtGui lib/qt4/QtScript

MODULES =		devel/cmake x11/qt4

TEST_DEPENDS =		${BUILD_PKGPATH}
TEST_IS_INTERACTIVE =	X11

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen:Bool=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_LCov:Bool=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_Cccc:Bool=Yes

SUBST_VARS =		PLIST_VERSION

.include <bsd.port.mk>
