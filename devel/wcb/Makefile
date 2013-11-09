# $OpenBSD: Makefile,v 1.5 2013/11/09 18:22:02 zhuk Exp $

COMMENT =	widget callback package for Tcl/Tk

N =		wcb
DISTNAME =	$N3.4
PKGNAME =	$N-3.4
CATEGORIES =	devel
HOMEPAGE =	http://www.nemethi.de/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# ISC style
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE:=$N/}
MODULES =	x11/tk
RUN_DEPENDS =	${MODTK_RUN_DEPENDS}
NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*
REVISION =	0
SUBST_VARS =	TK_EXA_DIR

TK_EXA_DIR =	${LOCALBASE}/share/examples/tk${MODTK_VERSION}

WC_LIB_DIR =	${PREFIX}/lib/tcl/$N
WC_DOC_DIR =	${PREFIX}/share/doc/$N
WC_EXA_DIR =	${PREFIX}/share/examples/$N
WC_SCR_DIR =	${WC_LIB_DIR}/scripts

EXA_SUBSTS =	listboxtest1.tcl listboxtest2.tcl
EXA_SCRIPTS =	${EXA_SUBSTS} entrytest.tcl texttest1.tcl texttest2.tcl

do-configure:
	@${MODTCL_WISH_ADJ} ${EXA_SCRIPTS:S!^!${WRKSRC}/demos/!}
	@${SUBST_CMD} ${EXA_SUBSTS:S!^!${WRKSRC}/demos/!}

do-install:
	${INSTALL_DATA_DIR} ${WC_SCR_DIR} ${WC_DOC_DIR} ${WC_EXA_DIR}
.for SRC GLOB DEST in \
		.	*.tcl		${WC_LIB_DIR} \
		scripts	*		${WC_SCR_DIR} \
		doc	*		${WC_DOC_DIR} \
		.	CHANGES.txt	${WC_DOC_DIR} \
		.	COPYRIGHT.txt	${WC_DOC_DIR} \
		.	README.txt	${WC_DOC_DIR} \
		demos	*.tcl		${WC_EXA_DIR}
	${INSTALL_DATA} ${WRKSRC}/${SRC}/${GLOB} ${DEST}
.endfor
	chmod ${BINMODE} ${EXA_SCRIPTS:S!^!${WC_EXA_DIR}/!}

.include <bsd.port.mk>
