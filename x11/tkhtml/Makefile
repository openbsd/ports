# $OpenBSD: Makefile,v 1.3 2010/10/19 08:13:59 espie Exp $

SHARED_ONLY =	Yes

COMMENT =	Tk widget to display HTML/CSS formatted contents

DISTNAME =	tkhtml3-alpha-16
PKGNAME =	${DISTNAME:S/3-alpha-/-3a/}
SHARED_LIBS =	Tkhtml30 0.0
CATEGORIES =	x11

HOMEPAGE = 	http://tkhtml.tcl.tk/

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${HOMEPAGE}

MODULES =		x11/tk
BUILD_DEPENDS =		${MODTK_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTK_RUN_DEPENDS}
WANTLIB +=		X11

WRKDIST =		${WRKDIR}/htmlwidget
USE_GMAKE =		Yes
USE_GROFF =	Yes
SEPARATE_BUILD =	simple
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LIBTkhtml30_VERSION=${LIBTkhtml30_VERSION}
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--with-tcl=${MODTCL_LIBDIR} \
			--with-tclinclude=${MODTCL_INCDIR} \
			--with-tk=${MODTK_LIBDIR} \
			--with-tkinclude=${MODTK_INCDIR} \
			--datadir=${PREFIX}/share/examples
NO_REGRESS =		Yes

.include <bsd.port.mk>
