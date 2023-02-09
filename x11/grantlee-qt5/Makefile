COMMENT =	template and text document library for Qt5

V =		5.3.1
PKGNAME =	grantlee-qt5-${V}
DISTNAME =	grantlee-${V}

SHARED_LIBS +=  Grantlee_Templates        1.1 # 5.1
SHARED_LIBS +=  Grantlee_TextDocument     0.1 # 5.1

CATEGORIES =	devel x11

HOMEPAGE =	https://github.com/steveire/grantlee

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += c m

MASTER_SITES =	https://github.com/steveire/grantlee/releases/download/v${V}/

MODULES =	devel/cmake \
		x11/qt5

LIB_DEPENDS +=	x11/qt5/qtdeclarative

TEST_DEPENDS =	${BUILD_PKGPATH}
TEST_IS_INTERACTIVE =	X11

V_GRANTLEE = ${V:R}
SUBST_VARS += V_GRANTLEE

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_LCov=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Cccc=ON

.include <bsd.port.mk>
