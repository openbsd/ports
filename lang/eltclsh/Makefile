# $OpenBSD: Makefile,v 1.3 2004/12/30 14:58:58 espie Exp $

COMMENT=	"Libedit interface to Tcl/Tk interpreters"

VERSION=	1.5
DISTNAME=	eltclsh-${VERSION}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	lang x11

MASTER_SITES=	http://softs.laas.fr/openrobots/php/download.php/

HOMEPAGE=	http://softs.laas.fr/openrobots/tools/eltclsh.php

MAINTAINER=	Matthieu Herrb <matthieu@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		MKDEP=/bin/false
USE_GMAKE=		Yes
FAKE_FLAGS=		prefix=${WRKINST}${PREFIX} ELTCL_LIBRARY=${WRKINST}${PREFIX}/share/eltcl

NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/eltclsh

LIB_DEPENDS+=		tcl84:tcl-8.4.*:lang/tcl/8.4
LIB_DEPENDS+=		tk84:tk-8.4.*:x11/tk/8.4

.include <bsd.port.mk>
