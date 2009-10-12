# $OpenBSD: Makefile,v 1.5 2009/10/12 12:33:59 sthen Exp $

COMMENT =		high-level widget set for Tcl/Tk

DISTNAME =		BWidget-1.9.0
PKGNAME =		bwidget-1.9.0
CATEGORIES =		x11
HOMEPAGE =		http://sourceforge.net/projects/tcllib/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD style
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tcllib/}
MODULES =		x11/tk
RUN_DEPENDS =		${MODTK_RUN_DEPENDS}
NO_BUILD =		Yes
NO_REGRESS =		Yes
PKG_ARCH =		*

BW_LIB_DIR =		${PREFIX}/lib/bwidget
BW_DOC_DIR =		${PREFIX}/share/doc/bwidget
BW_EXA_DIR =		${PREFIX}/share/examples/bwidget

do-configure:
	@${MODTCL_WISH_ADJ} ${WRKSRC}/demo/demo.tcl

do-install:
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
	${INSTALL_DATA_DIR} ${DEST}
	${INSTALL_DATA} ${WRKSRC}/${SRC}/${GLOB} ${DEST}
.endfor
	chmod 555 ${BW_EXA_DIR}/demo.tcl

.include <bsd.port.mk>
