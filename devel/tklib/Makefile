# $OpenBSD: Makefile,v 1.2 2009/09/06 10:46:25 ajacoutot Exp $

COMMENT =		Tk Standard Library

DISTNAME =		tklib-0.5
CATEGORIES=		devel x11/tk
HOMEPAGE =		http://sourceforge.net/projects/tcllib/

MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD style
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tcllib/}
MODULES =		x11/tk
BUILD_DEPENDS =		::devel/tcllib
RUN_DEPENDS =		::devel/tcllib
REGRESS_DEPENDS =	::devel/tcllib
REGRESS_IS_INTERACTIVE =x11
NO_BUILD =		Yes

SCRIPTS_TCLSH =		canvas/city.tcl \
			ntext/ntextDemoBindings.tcl ntext/ntextDemoIndent.tcl ntext/ntextExample.tcl \
			plotchart/plotdemos1.tcl plotchart/plotdemos2.tcl plotchart/plotdemos3.tcl \
			plotchart/plotdemos4.tcl plotchart/plotdemos5.tcl plotchart/plotdemos6.tcl \
			plotchart/plotdemos7.tcl plotchart/plotdemos8.tcl \
			tablelist/embeddedWindows.tcl tablelist/embeddedWindows_tile.tcl \
			tablelist/styles.tcl tablelist/styles_tile.tcl tablelist/tileWidgets.tcl \
			tkpiechart/demo.tcl \
			widget/screenruler.tcl

SCRIPTS_TCLSH_NOEXEC =	canvas/osm.tcl canvas/puzzle.tcl

do-configure:
	@${MODTCL_TCLSH_ADJ} ${SCRIPTS_TCLSH:S!^!${WRKSRC}/examples/!} \
		${SCRIPTS_TCLSH_NOEXEC:S!^!${WRKSRC}/examples/!}

do-install:
	${MODTCL_BIN} ${WRKSRC}/installer.tcl \
	-no-wait -no-gui -no-html \
	-pkgs -nroff -examples \
	-pkg-path ${PREFIX}/lib/tklib \
	-nroff-path ${PREFIX}/man/mann \
	-example-path ${PREFIX}/share/examples/tklib
	@chmod 555 ${SCRIPTS_TCLSH:S!^!${PREFIX}/share/examples/tklib/!}
	${MODTCL_BIN} ${FILESDIR}/mkindex.tcl ${PREFIX}/man/mann \
		${PKGDIR}/DESCR ${PREFIX}/man/mann/tklib.n tklib "${COMMENT}" 0.5
	@chown root:bin ${PREFIX}/man/mann/tklib.n
	@chmod 444 ${PREFIX}/man/mann/tklib.n

do-regress:
	${SETENV} ${MAKE_ENV} ${REGRESS_FLAGS} \
	${MODTCL_BIN} ${WRKSRC}/sak.tcl test

.include <bsd.port.mk>
