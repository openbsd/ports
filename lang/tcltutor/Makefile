# $OpenBSD: Makefile,v 1.3 2009/01/25 20:47:48 steven Exp $

COMMENT =		learn Tcl interactively

DISTNAME =		tcltutor-30b2
PKGNAME =		${DISTNAME}p0

CATEGORIES =		lang lang/tcl

HOMEPAGE =		http://www.msen.com/~clif/TclTutor.html

MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# ISC
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://www.msen.com/~clif/

DISTFILES =		tcltutor3_0b2.tgz

MODULES =		x11/tk

RUN_DEPENDS =		${MODTK_RUN_DEPENDS}

NO_BUILD =		Yes
NO_REGRESS =		Yes

WRKDIST =		${WRKDIR}/TclTutor

TT_LIB_DIR =		${PREFIX}/lib/tcltutor
TT_LSN_DIR =		${PREFIX}/share/doc/tcltutor

SUBST_VARS =		TT_LIB_DIR TT_LSN_DIR

do-configure:
	${SUBST_CMD} ${WRKSRC}/TclTutor.tcl
	perl -pi \
	-e ';$$. == 3 && s!exec wish.*$$!exec wish${MODTK_VERSION} "\$$0" \$${1+"\$$@"}!' \
	${WRKSRC}/TclTutor.tcl

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/TclTutor.tcl ${PREFIX}/bin/tcltutor
	${INSTALL_DATA_DIR} ${TT_LIB_DIR}
.for i in NOTICE README balloon.tcl htmllib.tcl images.tcl options.tcl simpleTop.tcl
	${INSTALL_DATA} ${WRKSRC}/$i ${TT_LIB_DIR}
.endfor
	${INSTALL_DATA_DIR} ${TT_LSN_DIR}
.for i in Tcl_English Tcl_Portuguese
	${INSTALL_DATA_DIR} ${TT_LSN_DIR}/$i
.	for j in lsn cfg html
		${INSTALL_DATA} ${WRKSRC}/lesson/$i/*.$j ${TT_LSN_DIR}/$i
.	endfor
.endfor

.include <bsd.port.mk>
