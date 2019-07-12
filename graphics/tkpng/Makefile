# $OpenBSD: Makefile,v 1.9 2019/07/12 20:47:11 sthen Exp $

COMMENT =	PNG photo image extension for Tcl/Tk

V =		0.9

DISTNAME =	tkpng${V}
PKGNAME =	tkpng-${V}
REVISION =	2
CATEGORIES =	graphics
HOMEPAGE =	http://www.muonics.com/FreeStuff/TkPNG/
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =	z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=tkpng/}
EXTRACT_SUFX =	.tgz
MODULES =	x11/tk
BUILD_DEPENDS =	${MODTK_BUILD_DEPENDS}
RUN_DEPENDS =	${MODTK_RUN_DEPENDS}
FAKE_FLAGS =	PKG_DIR='$$(PACKAGE_NAME)' INSTALL_PROGRAM='$$(INSTALL_DATA)'
SEPARATE_BUILD =Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=--with-tcl=${MODTCL_LIBDIR} \
		--with-tk=${MODTK_LIBDIR} \
		--with-tkinclude=${MODTK_INCDIR} \
		--libdir=${MODTCL_TCLDIR} \
		CFLAGS="${CFLAGS} -pthread"

NO_TEST =	Yes
SUBST_VARS =	VER

VER =		${V:S/.//g}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tkpng
	${INSTALL_DATA} ${WRKSRC}/README ${WRKSRC}/license.terms \
		${PREFIX}/share/doc/tkpng

.include <bsd.port.mk>
