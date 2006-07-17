# $OpenBSD: Makefile,v 1.6 2006/07/17 17:20:54 espie Exp $

COMMENT=	"Libedit interface to Tcl/Tk interpreters"

DISTNAME=	eltclsh-1.6
PKGNAME=	${DISTNAME}
CATEGORIES=	lang x11

MASTER_SITES=	http://softs.laas.fr/openrobots/php/download.php/

HOMEPAGE=	http://softs.laas.fr/openrobots/tools/eltclsh.php

MAINTAINER=	Matthieu Herrb <matthieu@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c termcap X11 m edit 

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		MKDEP=/bin/false
USE_GMAKE=		Yes
FAKE_FLAGS=		prefix=${WRKINST}${PREFIX} ELTCL_LIBRARY=${WRKINST}${PREFIX}/share/eltcl mandir=${WRKINST}${PREFIX}/man/man catdir=${WRKINST}${PREFIX}/man/cat

NO_REGRESS=		Yes

LIB_DEPENDS+=		tcl84:tcl-8.4.*:lang/tcl/8.4
LIB_DEPENDS+=		tk84:tk-8.4.*:x11/tk/8.4

.include <bsd.port.mk>
