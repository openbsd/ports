# $OpenBSD: Makefile,v 1.3 2011/01/05 18:35:32 sebastia Exp $

SHARED_ONLY =	Yes

COMMENT =	PNG photo image extension for Tcl/Tk

DISTNAME =	tkpng0.9
PKGNAME =	tkpng-0.9
REVISION =	1
SHARED_LIBS =	tkpng09 0.0
CATEGORIES =	graphics
HOMEPAGE =	http://www.muonics.com/FreeStuff/TkPNG/
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=tkpng/}
EXTRACT_SUFX =	.tgz
MODULES =	x11/tk
BUILD_DEPENDS =	${MODTK_BUILD_DEPENDS}
RUN_DEPENDS =	${MODTK_RUN_DEPENDS}

FAKE_FLAGS =	PKG_DIR=tkpng \
		INSTALL_PROGRAM='${INSTALL_DATA}'

SEPARATE_BUILD =concurrent
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--with-tcl=${MODTCL_LIBDIR} \
		--with-tk=${MODTK_LIBDIR} \
		--with-tkinclude=${MODTK_INCDIR} \
		--libdir=${MODTCL_TCLDIR} \
		LIBtkpng09_VERSION=${LIBtkpng09_VERSION} \
		CFLAGS="${CFLAGS} -pthread"

NO_REGRESS =	Yes
SUBST_VARS =	SHLIB_VERSION

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tkpng
	${INSTALL_DATA} ${WRKSRC}/README ${WRKSRC}/license.terms \
		${PREFIX}/share/doc/tkpng

.include <bsd.port.mk>
