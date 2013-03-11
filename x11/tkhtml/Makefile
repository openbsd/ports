# $OpenBSD: Makefile,v 1.8 2013/03/11 11:46:16 espie Exp $

SHARED_ONLY =	Yes

COMMENT =	Tk widget to display HTML/CSS formatted contents

REVISION =	0
DISTNAME =	tkhtml3-alpha-16
PKGNAME =	${DISTNAME:S/3-alpha-/-3a/}
SHARED_LIBS =	Tkhtml30 0.0
CATEGORIES =	x11
HOMEPAGE = 	http://tkhtml.tcl.tk/
MASTER_SITES =	${HOMEPAGE}
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =		Yes

MODULES =		x11/tk
BUILD_DEPENDS =		${MODTK_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTK_RUN_DEPENDS}
WANTLIB +=		X11

WRKDIST =		${WRKDIR}/htmlwidget
USE_GMAKE =		Yes
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--libdir=${MODTCL_TCLDIR} \
			--with-tcl=${MODTCL_LIBDIR} \
			--with-tclinclude=${MODTCL_INCDIR} \
			--with-tk=${MODTK_LIBDIR} \
			--with-tkinclude=${MODTK_INCDIR} \
			--datadir=${PREFIX}/share/examples \
			LIBTkhtml30_VERSION=${LIBTkhtml30_VERSION}
FAKE_FLAGS =		PKG_DIR=tkhtml
TEST_TARGET =	test
TEST_IS_INTERACTIVE = X11

.include <bsd.port.mk>
