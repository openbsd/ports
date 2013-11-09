# $OpenBSD: Makefile,v 1.5 2013/11/09 18:22:02 zhuk Exp $

SHARED_ONLY =	Yes

COMMENT =	drag n drop extension for Tk

REVISION =	2
DISTNAME =	tkdnd-1.0a2
SHARED_LIBS =	tkdnd 0.0
CATEGORIES =	x11

HOMEPAGE = 	http://tkdnd.sourceforge.net/

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tkdnd/}

MODULES =		x11/tk
BUILD_DEPENDS =		${MODTK_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTK_RUN_DEPENDS}

WANTLIB += X11 Xau Xdmcp Xext Xft Xrender Xss expat fontconfig
WANTLIB += freetype m z pthread-stubs xcb

USE_GMAKE =		yes
WRKSRC =		${WRKDIR}/${DISTNAME}/unix
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	 ${CONFIGURE_SHARED} \
			--libdir=${MODTCL_TCLDIR} \
			--with-tclinclude=${MODTCL_INCDIR} \
			--with-tcl=${MODTCL_LIBDIR} \
			--with-tk=${MODTK_LIBDIR} \
			--datadir=${PREFIX}/share/examples \
			--prefix=${WRKINST}
CONFIGURE_ENV =		CFLAGS=-I${X11BASE}/include \
			LIBtkdnd_VERSION=${LIBtkdnd_VERSION} \
			DESTDIR=${DESTDIR}
MAKE_ENV = 		MODTK_INCDIR=${MODTK_INCDIR}
TEST_TARGET =		tests
TEST_IS_INTERACTIVE = 	X11
SUBST_VARS =			DESTDIR

pre-configure:
	${SUBST_CMD} ${WRKSRC}/mkIndex.tcl.in
	${MODTCL_TCLSH_ADJ} ${WRKSRC}/../demo/dnddemo.tcl ${WRKSRC}/../demo/newtest.tcl

do-install:
	${INSTALL_PROGRAM_DIR} ${DESTDIR}${MODTCL_TCLDIR}/tkdnd
	cd ${WRKBUILD}/../lib/tkdnd && \
	${INSTALL_DATA} pkgIndex.tcl ${DESTDIR}${MODTCL_TCLDIR}/tkdnd
	cd ${WRKBUILD}/../lib/tkdnd && \
	${INSTALL_DATA} tkDND_Utils.tcl ${DESTDIR}${MODTCL_TCLDIR}/tkdnd
	cd ${WRKBUILD}/../lib/tkdnd && \
	${INSTALL_PROGRAM} libtkdnd.so.${LIBtkdnd_VERSION} ${DESTDIR}${MODTCL_TCLDIR}/tkdnd 
	${INSTALL_DATA_DIR} ${PREFIX}/man/mann
	cd ${WRKBUILD}/../doc && \
	${INSTALL_MAN} tkDND.n ${PREFIX}/man/mann


.include <bsd.port.mk>
