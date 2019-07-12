# $OpenBSD: Makefile,v 1.12 2019/07/12 20:51:22 sthen Exp $

COMMENT =	Tk widget to display HTML/CSS formatted contents

REVISION =	1
DISTNAME =	tkhtml3-alpha-16
PKGNAME =	${DISTNAME:S/3-alpha-/-3a/}
CATEGORIES =	x11
HOMEPAGE = 	http://tkhtml.tcl.tk/
MASTER_SITES =	${HOMEPAGE}
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE =		Yes

MODULES =		x11/tk
BUILD_DEPENDS =		${MODTK_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTK_RUN_DEPENDS}
WANTLIB +=		X11

WRKDIST =		${WRKDIR}/htmlwidget
USE_GMAKE =		Yes
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--libdir=${MODTCL_TCLDIR} \
			--with-tcl=${MODTCL_LIBDIR} \
			--with-tclinclude=${MODTCL_INCDIR} \
			--with-tk=${MODTK_LIBDIR} \
			--with-tkinclude=${MODTK_INCDIR} \
			--datadir=${PREFIX}/share/examples

FAKE_FLAGS =		PKG_DIR=tkhtml INSTALL_PROGRAM='$$(INSTALL_DATA)'
TEST_TARGET =	test
TEST_IS_INTERACTIVE = X11
SUBST_VARS =	VER

VER =		30

.include <bsd.port.mk>
