# $OpenBSD: Makefile,v 1.20 2009/09/06 10:46:26 ajacoutot Exp $

COMMENT =		table/matrix widget extension to Tcl/Tk

DOTVER =		2.10
VER =			${DOTVER:S/.//}
DISTNAME =		Tktable${DOTVER}
PKGNAME =		Tktable-${DOTVER}
TKTABLE_LIB =		libTktable${VER}
SUBST_VARS +=		TKTABLE_LIB
SHARED_LIBS =		Tktable${VER} 0.0
CATEGORIES =		x11
HOMEPAGE =		http://tktable.sourceforge.net/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD style
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=		X11
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tktable/}
MODULES =		x11/tk
BUILD_DEPENDS =		${MODTK_BUILD_DEPENDS}
RUN_DEPENDS =		${BUILD_DEPENDS}
FAKE_FLAGS =		INSTALL_PROGRAM="${INSTALL_DATA}"
SEPARATE_BUILD =	concurrent
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--with-tcl=${MODTCL_LIBDIR} \
			--with-tk=${MODTK_LIBDIR} \
			--with-tkinclude=${MODTK_INCDIR}

CONFIGURE_ENV +=	SHLIB_VERSION=${LIBTktable${VER}_VERSION}

REGRESS_IS_INTERACTIVE =x11
REGRESS_TARGET =	test

SCRIPTS_TCLSH =		basic.tcl buttons.tcl command.tcl debug.tcl dynarows.tcl \
			maxsize.tcl spreadsheet.tcl valid.tcl

EXAMPLE_FILES =		loadtable.tcl tcllogo.gif tktable.py

pre-configure:
	${MODTCL_TCLSH_ADJ} ${SCRIPTS_TCLSH:S!^!${WRKSRC}/demos/!}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/tktable
	${INSTALL_DATA} ${WRKBUILD}/${TKTABLE_LIB}.so.${LIBTktable${VER}_VERSION} \
		${WRKBUILD}/pkgIndex.tcl ${WRKSRC}/library/tkTable.tcl \
		${WRKSRC}/library/tktable.py ${PREFIX}/lib/tktable
	${INSTALL_DATA_DIR} ${PREFIX}/man/mann
	${INSTALL_DATA} ${WRKSRC}/doc/tkTable.n ${PREFIX}/man/mann/tktable.n
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tktable
	${INSTALL_DATA} ${WRKSRC}/doc/tkTable.html ${PREFIX}/share/doc/tktable/tktable.html
	${INSTALL_DATA} ${WRKSRC}/README.txt ${WRKSRC}/license.txt ${PREFIX}/share/doc/tktable
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tktable
	${INSTALL_SCRIPT} ${SCRIPTS_TCLSH:S!^!${WRKSRC}/demos/!} ${PREFIX}/share/examples/tktable
	${INSTALL_DATA} ${EXAMPLE_FILES:S!^!${WRKSRC}/demos/!} ${PREFIX}/share/examples/tktable

.include <bsd.port.mk>
