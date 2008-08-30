# $OpenBSD: Makefile,v 1.12 2008/08/30 14:02:18 matthieu Exp $

COMMENT =	Libedit interface to Tcl/Tk interpreters

DISTNAME =	eltclsh-1.9
CATEGORIES =	lang x11

MASTER_SITES =	http://softs.laas.fr/openrobots/php/download.php/

HOMEPAGE =	https://softs.laas.fr/openrobots/wiki/eltclsh

MAINTAINER =	Matthieu Herrb <matthieu@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes
WANTLIB =		c termcap X11 Xau Xdmcp m edit 

SEPARATE_BUILD =	concurrent
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		MKDEP=/bin/false
USE_X11 =		Yes
USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
FAKE_FLAGS =		"ELTCL_LIBRARY=${WRKINST}${PREFIX}/share/eltcl"

NO_REGRESS =		Yes

LIB_DEPENDS +=		tcl85:tcl-8.5.*:lang/tcl/8.5
LIB_DEPENDS +=		tk84:tk-8.5.*:x11/tk/8.5

.include <bsd.port.mk>
