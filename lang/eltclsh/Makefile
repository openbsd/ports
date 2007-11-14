# $OpenBSD: Makefile,v 1.10 2007/11/14 09:43:39 steven Exp $

COMMENT=	Libedit interface to Tcl/Tk interpreters

DISTNAME=	eltclsh-1.6
PKGNAME=	${DISTNAME}p1
CATEGORIES=	lang x11

MASTER_SITES=	http://softs.laas.fr/openrobots/php/download.php/

HOMEPAGE=	http://softs.laas.fr/openrobots/tools/eltclsh.php

MAINTAINER=	Matthieu Herrb <matthieu@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c termcap X11 Xau Xdmcp m edit 

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		MKDEP=/bin/false
USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
FAKE_FLAGS=		prefix=${WRKINST}${PREFIX} ELTCL_LIBRARY=${WRKINST}${PREFIX}/share/eltcl mandir=${WRKINST}${PREFIX}/man/man catdir=${WRKINST}${PREFIX}/man/cat

NO_REGRESS=		Yes

LIB_DEPENDS+=		tcl84:tcl-8.4.*:lang/tcl/8.4
LIB_DEPENDS+=		tk84:tk-8.4.*:x11/tk/8.4

.include <bsd.port.mk>
