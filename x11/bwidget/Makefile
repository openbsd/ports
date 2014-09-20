# $OpenBSD: Makefile,v 1.12 2014/09/20 17:46:24 stu Exp $

COMMENT =		high-level widget set for Tcl/Tk

DISTNAME =		bwidget-1.9.8
CATEGORIES =		x11
HOMEPAGE =		http://sourceforge.net/projects/tcllib/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD style
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tcllib/}
MODULES =		x11/tk
RUN_DEPENDS =		${MODTK_RUN_DEPENDS}
TEST_FLAGS +=		TCLLIBPATH="${WRKSRC}"
TEST_IS_INTERACTIVE =	X11
NO_BUILD =		Yes
PKG_ARCH =		*

BW_LIB_DIR =		${PREFIX}/lib/tcl/bwidget
BW_DOC_DIR =		${PREFIX}/share/doc/bwidget
BW_EXA_DIR =		${PREFIX}/share/examples/bwidget

do-configure:
	@${MODTCL_WISH_ADJ} ${WRKSRC}/demo/demo.tcl

do-test:
	${SETENV} ${ALL_TEST_ENV} ${ALL_TEST_FLAGS} \
		${MODTCL_BIN} ${WRKSRC}/tests/entry.test

do-install:
	${INSTALL_DATA_DIR} ${BW_LIB_DIR}/lang ${BW_LIB_DIR}/images \
		${BW_DOC_DIR} ${BW_EXA_DIR}
.for SRC GLOB DEST in \
		.	*.tcl		${BW_LIB_DIR}		\
		lang	*.rc		${BW_LIB_DIR}/lang	\
		images	*.gif		${BW_LIB_DIR}/images	\
		images	*.xbm		${BW_LIB_DIR}/images	\
		BWman	*.htm*		${BW_DOC_DIR}		\
		.	README.txt	${BW_DOC_DIR}		\
		.	LICENSE.txt	${BW_DOC_DIR}		\
		demo	*.tcl		${BW_EXA_DIR}		\
		demo	*.xbm		${BW_EXA_DIR}
	${INSTALL_DATA} ${WRKSRC}/${SRC}/${GLOB} ${DEST}
.endfor
	chmod ${BINMODE} ${BW_EXA_DIR}/demo.tcl
	rm ${BW_LIB_DIR}/widget-old.tcl

.include <bsd.port.mk>
