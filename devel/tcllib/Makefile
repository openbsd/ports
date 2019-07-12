# $OpenBSD: Makefile,v 1.31 2019/07/12 20:46:02 sthen Exp $

COMMENT =	Tcl Standard Library

DISTNAME =	tcllib-1.19pl0
CATEGORIES =	devel lang/tcl
HOMEPAGE =	http://sourceforge.net/projects/tcllib/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# BSD style
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://chiselapp.com/user/stwo/repository/tarballia/uv/

MODULES =	x11/tk
BUILD_DEPENDS =	${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =	${MODTCL_RUN_DEPENDS}
NO_BUILD =	Yes
PKG_ARCH =	*

do-install:
	${MODTCL_BIN} ${WRKSRC}/installer.tcl \
	-no-wait -no-gui -no-html \
	-pkgs -nroff -examples -apps \
	-pkg-path ${DESTDIR}${MODTCL_TCLDIR} \
	-nroff-path ${PREFIX}/man/mann \
	-example-path ${PREFIX}/share/examples/tcllib \
	-app-path ${PREFIX}/share/examples/tcllib/apps \
	-mp ${DESTDIR}${MODTCL_MODDIR}/85 \
	-csb ${PREFIX}/share/doc \
	-tclsh ${MODTCL_BIN} \
	-wish ${MODTK_BIN} \
	-descr "`cat ${PKGDIR}/DESCR`"
	mv ${PREFIX}/share/examples/tcllib/apps/dtplite ${PREFIX}/bin

# Define TEST_MODULES to restrict to a subset of regression tests.
do-test:
	${SETENV} ${ALL_TEST_ENV} ${ALL_TEST_FLAGS} \
	${MODTCL_BIN} ${WRKSRC}/sak.tcl test run -v ${TEST_MODULES}

.include <bsd.port.mk>
