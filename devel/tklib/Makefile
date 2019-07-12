# $OpenBSD: Makefile,v 1.21 2019/07/12 20:46:03 sthen Exp $

COMMENT =	Tk Standard Library

DISTNAME =	tklib-0.6pl5
CATEGORIES =	devel x11/tk
HOMEPAGE =	http://core.tcl.tk/tklib/home
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# BSD style
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://chiselapp.com/user/stwo/repository/tarballia/uv/

MODULES =	x11/tk
BUILD_DEPENDS =	devel/tcllib
RUN_DEPENDS =	devel/tcllib ${MODTK_RUN_DEPENDS}
TEST_DEPENDS =	devel/tcllib ${MODTK_BUILD_DEPENDS}
TEST_IS_INTERACTIVE =	X11
NO_BUILD =	Yes
PKG_ARCH =	*

do-configure:
	@perl -pi -e \
	's!\$$tk_library demos!${LOCALBASE}/share/examples/tk${MODTK_VERSION}!' \
	${WRKSRC}/examples/wcb/listboxtest[12].tcl

do-install:
	${MODTCL_BIN} ${WRKSRC}/installer.tcl \
	-no-wait -no-gui -no-html \
	-pkgs -nroff -examples -apps \
	-pkg-path ${DESTDIR}${MODTCL_TCLDIR} \
	-nroff-path ${PREFIX}/man/mann \
	-example-path ${PREFIX}/share/examples/tklib \
	-mp ${DESTDIR}${MODTCL_MODDIR}/85 \
	-app-path ${PREFIX}/share/examples/tklib/apps \
	-csb ${PREFIX}/share/doc \
	-tclsh ${MODTCL_BIN} \
	-wish ${MODTK_BIN} \
	-descr "`cat ${PKGDIR}/DESCR`"

# Define TEST_MODULES to restrict to a subset of regression tests.
do-test:
	${SETENV} ${ALL_TEST_ENV} ${ALL_TEST_FLAGS} \
	${MODTCL_BIN} ${WRKSRC}/sak.tcl test run -v ${TEST_MODULES}

.include <bsd.port.mk>
