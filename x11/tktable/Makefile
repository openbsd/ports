# $OpenBSD: Makefile,v 1.33 2019/07/12 20:51:23 sthen Exp $

COMMENT =		table/matrix widget extension to Tcl/Tk

V =			2.10

DISTNAME =		Tktable${V}
PKGNAME =		Tktable-${V}
REVISION =		5
CATEGORIES =		x11
HOMEPAGE =		http://tktable.sourceforge.net/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD style
PERMIT_PACKAGE =	Yes

WANTLIB +=		X11
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tktable/}
MODULES =		x11/tk
BUILD_DEPENDS =		${MODTK_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTK_RUN_DEPENDS}
FAKE_FLAGS =		INSTALL_PROGRAM="${INSTALL_DATA}"
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	--with-tcl=${MODTCL_LIBDIR} \
			--with-tk=${MODTK_LIBDIR} \
			--with-tkinclude=${MODTK_INCDIR}

TEST_IS_INTERACTIVE =	X11
TEST_TARGET =		test
SUBST_VARS +=		TKTABLE_VER

TKTABLE_VER =		${V:S/.//}

SCRIPTS_TCLSH =		basic.tcl buttons.tcl command.tcl debug.tcl dynarows.tcl \
			maxsize.tcl spreadsheet.tcl valid.tcl

EXAMPLE_FILES =		loadtable.tcl tcllogo.gif tktable.py

pre-configure:
	@${MODTCL_TCLSH_ADJ} ${SCRIPTS_TCLSH:S!^!${WRKSRC}/demos/!}

do-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${MODTCL_TCLDIR}/tktable
	${INSTALL_DATA} ${WRKBUILD}/libTktable${TKTABLE_VER}.so \
		${WRKBUILD}/pkgIndex.tcl ${WRKSRC}/library/tkTable.tcl \
		${WRKSRC}/library/tktable.py ${DESTDIR}${MODTCL_TCLDIR}/tktable
	${INSTALL_DATA_DIR} ${PREFIX}/man/mann
	${INSTALL_DATA} ${WRKSRC}/doc/tkTable.n ${PREFIX}/man/mann/tktable.n
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tktable
	${INSTALL_DATA} ${WRKSRC}/doc/tkTable.html ${PREFIX}/share/doc/tktable/tktable.html
	${INSTALL_DATA} ${WRKSRC}/README.txt ${WRKSRC}/license.txt ${PREFIX}/share/doc/tktable
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tktable
	${INSTALL_SCRIPT} ${SCRIPTS_TCLSH:S!^!${WRKSRC}/demos/!} ${PREFIX}/share/examples/tktable
	${INSTALL_DATA} ${EXAMPLE_FILES:S!^!${WRKSRC}/demos/!} ${PREFIX}/share/examples/tktable

.include <bsd.port.mk>
