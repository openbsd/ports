COMMENT =	Tk Standard Library

DISTNAME =	tklib-0.9pl0
CATEGORIES =	devel x11/tk
HOMEPAGE =	http://core.tcl.tk/tklib/home
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>
REVISION =	0

# BSD style
PERMIT_PACKAGE =Yes

SITES =		https://chiselapp.com/user/stwo/repository/tarballia/uv/

MODULES =	x11/tk
MODTK_VERSION =	8.6
BUILD_DEPENDS =	devel/tcllib
RUN_DEPENDS =	devel/tcllib ${MODTK_RUN_DEPENDS}
TEST_DEPENDS =	devel/tcllib ${MODTK_BUILD_DEPENDS}
TEST_IS_INTERACTIVE = X11
SEPARATE_BUILD =Yes
NO_BUILD =	Yes
PKG_ARCH =	*

do-install:
	${MODTCL_BIN} ${WRKSRC}/installer.tcl \
	-no-wait -no-gui -no-html \
	-pkgs -nroff -examples -apps \
	-pkg-path ${DESTDIR}${MODTCL_TCLDIR} \
	-nroff-path ${PREFIX}/man/mann \
	-example-path ${PREFIX}/share/examples/tklib \
	-app-path ${PREFIX}/share/examples/tklib/apps \
	-mp ${DESTDIR}${MODTCL_MODDIR}/85 \
	-csb ${PREFIX}/share/doc \
	-tclsh ${MODTCL_BIN} \
	-wish ${MODTK_BIN} \
	-descr "`cat ${PKGDIR}/DESCR`"
	# Conflicts with "map" in devel/tcllib.
	mv ${PREFIX}/lib/tcl/map ${PREFIX}/lib/tcl/map_tklib

# Define TEST_MODULES to restrict to a subset of regression tests.
do-test:
	cd ${WRKBUILD} && \
	${SETENV} ${ALL_TEST_ENV} ${ALL_TEST_FLAGS} \
	${MODTCL_BIN} ${WRKSRC}/sak.tcl test run -v ${TEST_MODULES}

.include <bsd.port.mk>
