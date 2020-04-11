# $OpenBSD: Makefile,v 1.1.1.1 2020/04/11 18:58:04 jasper Exp $

COMMENT =	RE platform powered by radare2

GH_ACCOUNT =	radareorg
GH_PROJECT =	cutter
GH_TAGNAME =	v1.10.2
CATEGORIES =	devel

HOMEPAGE =	https://cutter.re/

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5Svg
WANTLIB += Qt5Widgets c capstone crypto m ssl z zip

MODULES =	devel/cmake \
		x11/qt5

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/radare2/main
LIB_DEPENDS =	archivers/libzip \
		devel/capstone/main \
		x11/qt5/qtsvg

WRKSRC =	${WRKDIST}/src

CONFIGURE_ARGS =-DCUTTER_USE_BUNDLED_RADARE2=OFF \
		-DCUTTER_ENABLE_CRASH_REPORTS=OFF \
		-DCUTTER_ENABLE_KSYNTAXHIGHLIGHTING=OFF \
		-DCUTTER_ENABLE_PYTHON=OFF \
		-DCUTTER_ENABLE_GRAPHVIZ=OFF

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/Cutter ${PREFIX}/bin/cutter

.include <bsd.port.mk>
