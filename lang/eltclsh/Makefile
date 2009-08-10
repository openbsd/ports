# $OpenBSD: Makefile,v 1.16 2009/08/10 17:31:07 kili Exp $

COMMENT =	Libedit interface to Tcl/Tk interpreters

DISTNAME =	eltclsh-1.9
PKGNAME=	${DISTNAME}p3
CATEGORIES =	lang x11

MASTER_SITES =	http://softs.laas.fr/openrobots/php/download.php/

HOMEPAGE =	https://softs.laas.fr/openrobots/wiki/eltclsh

MAINTAINER =	Matthieu Herrb <matthieu@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

WANTLIB += X11 Xau Xdmcp Xext Xft Xrender Xss c edit expat fontconfig
WANTLIB += freetype m pthread-stubs termcap xcb z

SEPARATE_BUILD =	concurrent
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-tcl=${LOCALBASE}/lib/tcl8.5 \
			--with-tk=${LOCALBASE}/lib/tk8.5
CONFIGURE_ENV =		MKDEP=/bin/false
USE_X11 =		Yes
USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
FAKE_FLAGS =		"ELTCL_LIBRARY=${WRKINST}${PREFIX}/share/eltcl"

NO_REGRESS =		Yes

LIB_DEPENDS +=		tcl85:tcl->=8.5,<8.6:lang/tcl/8.5
LIB_DEPENDS +=		tk85:tk->=8.5,<8.6:x11/tk/8.5

.include <bsd.port.mk>
