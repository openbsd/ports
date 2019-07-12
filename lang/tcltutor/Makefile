# $OpenBSD: Makefile,v 1.11 2019/07/12 20:47:23 sthen Exp $

COMMENT =	learn Tcl interactively

DISTNAME =	tcltutor-30b7
CATEGORIES =	lang lang/tcl
HOMEPAGE =	http://www.msen.com/~clif/TclTutor.html
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# ISC
PERMIT_PACKAGE =	Yes

MASTER_SITES =	http://www.msen.com/~clif/
DISTFILES =	tcltutor30b7.tgz
MODULES =	x11/tk
RUN_DEPENDS =	${MODTK_RUN_DEPENDS}
NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*
WRKDIST =	${WRKDIR}/TclTutor

SUBST_VARS +=	TT_LIB_DIR TT_LSN_DIR

TT_LIB_DIR =	${PREFIX}/libdata/tcltutor
TT_LSN_DIR =	${PREFIX}/share/doc/tcltutor

do-configure:
	@${SUBST_CMD} ${WRKSRC}/TclTutor.tcl
	@${MODTCL_WISH_ADJ} ${WRKSRC}/TclTutor.tcl

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/TclTutor.tcl ${PREFIX}/bin/tcltutor
	${INSTALL_DATA_DIR} ${TT_LIB_DIR}
.for i in balloon.tcl htmllib.tcl images.tcl options.tcl simpleTop.tcl
	${INSTALL_DATA} ${WRKSRC}/$i ${TT_LIB_DIR}
.endfor
	${INSTALL_DATA_DIR} ${TT_LSN_DIR}
	${INSTALL_DATA} ${WRKSRC}/NOTICE ${TT_LSN_DIR}
	${INSTALL_DATA} ${WRKSRC}/README ${TT_LSN_DIR}
.for i in Tcl_English Tcl_Portuguese
	${INSTALL_DATA_DIR} ${TT_LSN_DIR}/$i
.	for j in lsn cfg html
		${INSTALL_DATA} ${WRKSRC}/lesson/$i/*.$j ${TT_LSN_DIR}/$i
.	endfor
.endfor

.include <bsd.port.mk>
