# $OpenBSD: Makefile,v 1.4 2014/06/21 11:34:26 jasper Exp $

COMMENT =	syntax analysis tool for Tcl

DISTNAME =	nagelfar1112
PKGNAME =	nagelfar-1.1.12
REVISION =	0
CATEGORIES =	devel
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# GPLv2 (Nagelfar)
# BSD (textSearch)
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=nagelfar.berlios/}
MODULES =	x11/tk
RUN_DEPENDS =	${MODTK_RUN_DEPENDS}
NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*
REVISION =	0

NF_LIB_DIR =	${PREFIX}/libdata/nagelfar
NF_DOC_DIR =	${PREFIX}/share/doc/nagelfar
TS_SRC_DIR =	${WRKSRC}/lib/textsearch
TS_DOC_DIR =	${PREFIX}/share/doc/textsearch
TS_EXA_DIR =	${PREFIX}/share/examples/textsearch
MOD_DIR =	${DESTDIR}${MODTCL_MODDIR}/${MODTCL_VERSION}

do-configure:
	@${MODTCL_TCLSH_ADJ} ${WRKSRC}/nagelfar.tcl
	@${SUBST_CMD} ${WRKSRC}/nagelfar.tcl
	@${MODTCL_TCLSH_ADJ} ${TS_SRC_DIR}/examples/demo.tcl
	@${SUBST_CMD} ${TS_SRC_DIR}/examples/demo.tcl

do-install:
	${INSTALL_DATA_DIR} ${NF_LIB_DIR} ${NF_DOC_DIR}
	${INSTALL_SCRIPT} ${WRKSRC}/nagelfar.tcl ${PREFIX}/bin/nagelfar
	${INSTALL_DATA} ${WRKSRC}/syntax*.tcl ${NF_LIB_DIR}
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${NF_DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/COPYING ${NF_DOC_DIR}
	${INSTALL_DATA_DIR} ${TS_DOC_DIR} ${TS_EXA_DIR} ${MOD_DIR}
	${INSTALL_DATA} ${TS_SRC_DIR}/tcl/textsearch.tcl ${MOD_DIR}/textSearch-0.3.tm
	${INSTALL_DATA} ${TS_SRC_DIR}/doc/readme.txt ${TS_DOC_DIR}
	${INSTALL_SCRIPT} ${TS_SRC_DIR}/examples/demo.tcl ${TS_EXA_DIR}

.include <bsd.port.mk>
