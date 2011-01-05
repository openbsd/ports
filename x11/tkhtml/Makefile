# $OpenBSD: Makefile,v 1.5 2011/01/05 17:50:48 sebastia Exp $

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
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =		x11/tk
BUILD_DEPENDS =		${MODTK_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTK_RUN_DEPENDS}
WANTLIB +=		X11

WRKDIST =		${WRKDIR}/htmlwidget
USE_GMAKE =		Yes
SEPARATE_BUILD =	simple
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
NO_REGRESS =		Yes

.include <bsd.port.mk>
