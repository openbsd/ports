# $OpenBSD: Makefile,v 1.7 2007/03/18 16:58:35 espie Exp $

COMMENT=	"compilation manager for Haskell programs"
 
V=		3.10
DISTNAME=	hmake-${V}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	devel

HOMEPAGE=	http://www.haskell.org/hmake/
MAINTAINER=	Don Stewart <dons@openbsd.org>

MODULES=	lang/ghc

MASTER_SITES=	http://www.haskell.org/hmake/ \
		ftp://ftp.cs.york.ac.uk/pub/haskell/hmake/ \
		http://www.cs.york.ac.uk/fp/hmake/

NO_REGRESS=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=simple

# BSD style w/o advertising clause
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c gmp m ncurses readline

post-install:
	chown -R ${BINOWN}:${BINGRP} ${PREFIX}/lib/hmake
.include <bsd.port.mk>
