# $OpenBSD: Makefile,v 1.8 2007/06/15 21:28:19 kili Exp $

COMMENT=	"compilation manager for Haskell programs"
 
V=		3.13
DISTNAME=	hmake-${V}
CATEGORIES=	devel

HOMEPAGE=	http://www.haskell.org/hmake/
MAINTAINER=	Matthias Kilian <kili@openbsd.org>

MODULES=	lang/ghc
CONFIGURE_ARGS=	--buildwith=ghc

MASTER_SITES=	${HOMEPAGE} \
		http://www.cs.york.ac.uk/fp/hmake/ \
		ftp://ftp.cs.york.ac.uk/pub/haskell/hmake/

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
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hmake
	${INSTALL_DATA} ${WRKSRC}/docs/hmake/* ${PREFIX}/share/doc/hmake

.include <bsd.port.mk>
