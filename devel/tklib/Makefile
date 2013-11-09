# $OpenBSD: Makefile,v 1.10 2013/11/09 18:22:02 zhuk Exp $

COMMENT =	Tk Standard Library

DISTNAME =	tklib-0.5
REVISION =	2
CATEGORIES =	devel x11/tk
HOMEPAGE =	http://sourceforge.net/projects/tcllib/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# BSD style
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=tcllib/}
MODULES =	x11/tk
BUILD_DEPENDS =	devel/tcllib
RUN_DEPENDS =	devel/tcllib ${MODTK_RUN_DEPENDS}
TEST_DEPENDS =	devel/tcllib ${MODTK_BUILD_DEPENDS}
USE_GROFF =	Yes
TEST_IS_INTERACTIVE =	X11
NO_BUILD =	Yes
PKG_ARCH =	*

SCRIPTS_TCLSH = \
	canvas/city.tcl \
	ntext/ntextDemoBindings.tcl ntext/ntextDemoIndent.tcl ntext/ntextExample.tcl \
	plotchart/plotdemos1.tcl plotchart/plotdemos2.tcl plotchart/plotdemos3.tcl \
	plotchart/plotdemos4.tcl plotchart/plotdemos5.tcl plotchart/plotdemos6.tcl \
	plotchart/plotdemos7.tcl plotchart/plotdemos8.tcl \
	tablelist/embeddedWindows.tcl tablelist/embeddedWindows_tile.tcl \
	tablelist/styles.tcl tablelist/styles_tile.tcl tablelist/tileWidgets.tcl \
	tkpiechart/demo.tcl \
	widget/screenruler.tcl

SCRIPTS_TCLSH_NOEXEC = \
	canvas/osm.tcl canvas/puzzle.tcl

do-configure:
	@${MODTCL_TCLSH_ADJ} \
		${SCRIPTS_TCLSH:S!^!${WRKSRC}/examples/!} \
		${SCRIPTS_TCLSH_NOEXEC:S!^!${WRKSRC}/examples/!}

do-install:
	${MODTCL_BIN} ${WRKSRC}/installer.tcl \
	-no-wait -no-gui -no-html \
	-pkgs -nroff -examples \
	-pkg-path ${DESTDIR}${MODTCL_TCLDIR} \
	-nroff-path ${PREFIX}/man/mann \
	-example-path ${PREFIX}/share/examples/tklib
	@chmod ${BINMODE} ${SCRIPTS_TCLSH:S!^!${PREFIX}/share/examples/tklib/!}
	${MODTCL_BIN} ${FILESDIR}/mkindex.tcl ${PREFIX}/man/mann \
		${PKGDIR}/DESCR ${PREFIX}/man/mann/tklib.n tklib "${COMMENT}" 0.5
	@chown ${MANOWN}:${MANGRP} ${PREFIX}/man/mann/tklib.n
	@chmod ${MANMODE} ${PREFIX}/man/mann/tklib.n

do-test:
	${SETENV} ${MAKE_ENV} ${TEST_FLAGS} \
	${MODTCL_BIN} ${WRKSRC}/sak.tcl test

.include <bsd.port.mk>
