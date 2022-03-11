COMMENT =		template and text document library for Qt5

VERSION =		5.2.0
PKGNAME =		grantlee-qt5-${VERSION}
DISTNAME =		grantlee-${VERSION}
REVISION =		1

SHARED_LIBS +=  Grantlee_Templates        1.0 # 5.1
SHARED_LIBS +=  Grantlee_TextDocument     0.0 # 5.1

CATEGORIES =		devel x11

HOMEPAGE =		https://github.com/steveire/grantlee

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += m

MASTER_SITES =		http://downloads.grantlee.org/ \
			http://www.loegria.net/grantlee/

MODULES =		devel/cmake \
			x11/qt5

LIB_DEPENDS +=		x11/qt5/qtdeclarative

TEST_DEPENDS =		${BUILD_PKGPATH}
TEST_IS_INTERACTIVE =	X11

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_LCov=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Cccc=ON

CONFIGURE_ARGS +=	-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS} -lc -lpthread" \
			-DCMAKE_SHARED_LINKER_FLAGS="${LDFLAGS} -lc -lpthread" \
			-DCMAKE_MODULE_LINKER_FLAGS="${LDFLAGS} -lc -lpthread"

.include <bsd.port.mk>
