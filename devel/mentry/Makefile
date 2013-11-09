# $OpenBSD: Makefile,v 1.5 2013/11/09 18:22:02 zhuk Exp $

COMMENT =	multi-entry widget package for Tcl/Tk

N =		mentry
DISTNAME =	$N3.6
PKGNAME =	$N-3.6
CATEGORIES =	devel
HOMEPAGE =	http://www.nemethi.de/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# ISC style
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE:=$N/}
MODULES =	lang/tcl
RUN_DEPENDS =	devel/wcb
NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*
REVISION =	0

MT_LIB_DIR =	${PREFIX}/lib/tcl/$N
MT_DOC_DIR =	${PREFIX}/share/doc/$N
MT_EXA_DIR =	${PREFIX}/share/examples/$N
MT_SCR_DIR =	${MT_LIB_DIR}/scripts

EXA_SCRIPTS =	datetime1.tcl datetime1_tile.tcl datetime2.tcl \
		datetime2_tile.tcl ethernetaddr.tcl ethernetaddr_tile.tcl \
		phonenumber.tcl phonenumber_tile.tcl

do-configure:
	@${MODTCL_WISH_ADJ} ${EXA_SCRIPTS:S!^!${WRKSRC}/demos/!}

do-install:
	${INSTALL_DATA_DIR} ${MT_SCR_DIR} ${MT_DOC_DIR} ${MT_EXA_DIR}
.for SRC GLOB DEST in \
		.	*.tcl		${MT_LIB_DIR} \
		scripts	*		${MT_SCR_DIR} \
		doc	*		${MT_DOC_DIR} \
		.	CHANGES.txt	${MT_DOC_DIR} \
		.	COPYRIGHT.txt	${MT_DOC_DIR} \
		.	README.txt	${MT_DOC_DIR} \
		demos	*.tcl		${MT_EXA_DIR}
	${INSTALL_DATA} ${WRKSRC}/${SRC}/${GLOB} ${DEST}
.endfor
	chmod ${BINMODE} ${EXA_SCRIPTS:S!^!${MT_EXA_DIR}/!}

.include <bsd.port.mk>
