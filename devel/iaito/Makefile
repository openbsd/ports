COMMENT =	RE platform powered by radare2

GH_ACCOUNT =	radareorg
GH_PROJECT =	iaito
GH_TAGNAME =	5.7.2

CATEGORIES =	devel

HOMEPAGE =	https://www.radare.org/n/iaito.html

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Svg
WANTLIB += Qt5Widgets c capstone crypto m ssl z zip

MODULES =	x11/qt5

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/radare2/main>=5.7.4 \
		math/graphviz
LIB_DEPENDS =	archivers/libzip \
		devel/capstone/main \
		x11/qt5/qtsvg

CONFIGURE_STYLE =	simple
CONFIGURE_ENV +=	QMAKE=${MODQT5_QMAKE} \
			LRELEASE=${MODQT5_LRELEASE} \
			IAITO_ENABLE_GRAPHVIZ=1

NO_TEST =	Yes
USE_GMAKE =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/build/iaito ${PREFIX}/bin/iaito
	${INSTALL_DATA} ${WRKBUILD}/src/iaito.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
