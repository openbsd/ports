# $OpenBSD: Makefile,v 1.2 2010/07/30 16:41:09 sebastia Exp $

SHARED_ONLY =	Yes

COMMENT =	drag n drop extension for Tk

REVISION =	0
DISTNAME =	tkdnd-1.0a2
SHARED_LIBS =	tkdnd 0.0
CATEGORIES =	x11

HOMEPAGE = 	http://tkdnd.sourceforge.net/

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tkdnd/}

MODULES =		x11/tk
BUILD_DEPENDS =		${MODTK_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTK_RUN_DEPENDS}

WANTLIB += X11 Xau Xdmcp Xext Xft Xrender Xss expat fontconfig
WANTLIB += freetype m z pthread-stubs xcb

USE_GMAKE =		yes
WRKSRC =		${WRKDIR}/${DISTNAME}/unix
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--with-tclinclude=${MODTCL_INCDIR} \
			--with-tcl=${MODTCL_LIBDIR} \
			--with-tk=${MODTK_LIBDIR} \
			--datadir=${PREFIX}/share/examples \
			--prefix=${WRKINST}
CONFIGURE_ENV =		CFLAGS+=-I${X11BASE}/include \
			LIBtkdnd_VERSION=${LIBtkdnd_VERSION} \
			DESTDIR=${DESTDIR}
MAKE_ENV = 		MODTK_INCDIR=${MODTK_INCDIR}
REGRESS_TARGET =		tests
REGRESS_IS_INTERACTIVE = 	X11
SUBST_VARS =			DESTDIR

pre-configure:
	${SUBST_CMD} ${WRKSRC}/mkIndex.tcl.in
	${MODTCL_TCLSH_ADJ} ${WRKSRC}/../demo/dnddemo.tcl ${WRKSRC}/../demo/newtest.tcl

post-install:
	${INSTALL_DATA} ${WRKBUILD}/../lib/tkdnd/pkgIndex.tcl ${PREFIX}/lib/tkdnd/

.include <bsd.port.mk>
