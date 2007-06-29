# $OpenBSD: Makefile,v 1.10 2007/06/29 11:23:41 kili Exp $

COMMENT=	"compilation manager for Haskell programs"
 
V=		3.13
DISTNAME=	hmake-${V}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	devel

HOMEPAGE=	http://www.haskell.org/hmake/
MAINTAINER=	Matthias Kilian <kili@openbsd.org>

MASTER_SITES=	${HOMEPAGE} \
		http://www.cs.york.ac.uk/fp/hmake/ \
		ftp://ftp.cs.york.ac.uk/pub/haskell/hmake/

# BSD style w/o advertising clause
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=simple

WANTLIB+=		c m

.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64"
MODULES=	lang/ghc
CONFIGURE_ARGS=	--buildwith=ghc
WANTLIB+=	gmp ncurses readline
.else
BUILD_DEPENDS+=	::lang/nhc98
CONFIGURE_ARGS=	--buildwith=nhc98
.endif

post-install:
	chown -R ${BINOWN}:${BINGRP} ${PREFIX}/lib/hmake
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hmake
	${INSTALL_DATA} ${WRKSRC}/docs/hmake/* ${PREFIX}/share/doc/hmake
	rm ${PREFIX}/man/man1/hmake.1.orig

.include <bsd.port.mk>
