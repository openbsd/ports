# $OpenBSD: Makefile,v 1.6 2017/05/22 13:54:20 espie Exp $
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

BUILD_DEPENDS =		${MODKDE4_DEP_DIR}/libs
LIB_DEPENDS =		devel/gmp

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen:Bool=Yes
CXXFLAGS +=	-I${LOCALBASE}/include
LDFLAGS += -L${LOCALBASE}/lib

do-test:
	cd ${WRKBUILD} && ./libalkimia/alkcompanytest

.include <bsd.port.mk>
