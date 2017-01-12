# $OpenBSD: Makefile,v 1.4 2017/01/12 16:18:55 zhuk Exp $
COMMENT =		common classes for finance KDE 4 apps
CATEGORIES =		productivity x11
HOMEPAGE =		http://kmymoney2.sourceforge.net
MAINTAINER =		KDE porting team <openbsd-kde@googlegroups.com>
V =			5.0.0
DISTNAME =		libalkimia-$V

SHARED_LIBS =		alkimia		1.0 # 5.0

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		lib/qt4/QtDBus gmp m

MASTER_SITES =		${MASTER_SITE_KDE:=/stable/alkimia/$V/src/}

MODULES =		x11/kde4
MODKDE4_USE =
KDE4_ONLY =		Yes

BUILD_DEPENDS =		devel/doxygen \
			${MODKDE4_DEP_DIR}/libs
LIB_DEPENDS =		devel/gmp

do-test:
	cd ${WRKBUILD} && ./libalkimia/alkcompanytest

.include <bsd.port.mk>
