#$OpenBSD: Makefile,v 1.3 2019/07/12 20:50:10 sthen Exp $

COMMENT =	library for generating PDF documents for Tcl

V =		0.9.1

DISTNAME =	pdf4tcl${V:S/.//g}
PKGNAME =	pdf4tcl-${V}
CATEGORIES =	textproc
HOMEPAGE =	http://sourceforge.net/projects/pdf4tcl/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=pdf4tcl/}

MODULES =	lang/tcl
MODTCL_VERSION =8.6
BUILD_DEPENDS =	devel/tcllib
RUN_DEPENDS =	${MODTCL_RUN_DEPENDS}
SEPARATE_BUILD =Yes
NO_TEST =	Yes
PKG_ARCH =	*

PT_LIB_DIR =	${DESTDIR}${MODTCL_TCLDIR}/pdf4tcl
PT_DAT_DIR =	${DESTDIR}${MODTCL_TCLDIR}/pdf4tcl/bitmaps
PT_DOC_DIR =	${PREFIX}/share/doc/pdf4tcl
PT_MAN_DIR =	${PREFIX}/man/mann

do-build:
	dtplite -o ${WRKBUILD}/pdf4tcl.n nroff ${WRKSRC}/pdf4tcl.man

do-install:
	${INSTALL_DATA_DIR} ${PT_DAT_DIR} ${PT_DOC_DIR} ${PT_MAN_DIR}
	${INSTALL_DATA} ${WRKSRC}/{pkgIndex,pdf4tcl,glyph2uni,stdmetrics}.tcl ${PT_LIB_DIR}
	${INSTALL_DATA} ${WRKSRC}/bitmaps/*.xbm ${PT_DAT_DIR}
	${INSTALL_DATA} ${WRKSRC}/{licence.terms,pdf4tcl.html} ${PT_DOC_DIR}
	${INSTALL_DATA} ${WRKBUILD}/pdf4tcl.n ${PT_MAN_DIR}

.include <bsd.port.mk>
