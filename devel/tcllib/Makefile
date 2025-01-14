COMMENT =	Tcl Standard Library

DISTNAME =	tcllib-2.0
CATEGORIES =	devel lang/tcl
HOMEPAGE =	https://sourceforge.net/projects/tcllib/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# BSD style
PERMIT_PACKAGE =Yes

SITES =		${SITE_SOURCEFORGE:=tcllib/}

MODULES =	x11/tk
BUILD_DEPENDS =	${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =	${MODTCL_RUN_DEPENDS}
SEPARATE_BUILD =Yes
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
	# Conflicts with "map" in devel/tklib.
	mv ${PREFIX}/lib/tcl/map ${PREFIX}/lib/tcl/map_tcllib

# Define TEST_MODULES to restrict to a subset of regression tests.
do-test:
	cd ${WRKBUILD} && \
	${SETENV} ${ALL_TEST_ENV} ${ALL_TEST_FLAGS} \
	${MODTCL_BIN} ${WRKSRC}/sak.tcl test run -v ${TEST_MODULES}

.include <bsd.port.mk>
