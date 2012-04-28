# $OpenBSD: Makefile,v 1.24 2012/04/28 20:20:15 matthieu Exp $

COMMENT =	Libedit interface to Tcl/Tk interpreters

DISTNAME =	eltclsh-1.9
REVISION=	6
CATEGORIES =	lang x11

MASTER_SITES =	http://www.openrobots.org/distfiles/eltclsh/

HOMEPAGE =	http://www.openrobots.org/wiki/eltclsh

MAINTAINER =	Matthieu Herrb <matthieu@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

MODULES +=	x11/tk
WANTLIB += X11 Xau Xdmcp Xext Xft Xrender Xss c edit expat fontconfig
WANTLIB += freetype m pthread-stubs termcap xcb z

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-tcl=${MODTCL_LIBDIR} \
			--with-tk=${MODTK_LIBDIR}
CONFIGURE_ENV =		MKDEP=/bin/false
USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
FAKE_FLAGS =		"ELTCL_LIBRARY=${WRKINST}${PREFIX}/share/eltcl"

NO_REGRESS =		Yes

LIB_DEPENDS +=		${MODTK_LIB_DEPENDS}

WANTLIB +=		${MODTK_WANTLIB}

.include <bsd.port.mk>
