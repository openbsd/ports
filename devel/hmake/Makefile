# $OpenBSD: Makefile,v 1.17 2010/10/18 17:47:53 espie Exp $

COMMENT =	compilation manager for Haskell programs
 
DISTNAME =	hmake-3.14
REVISION =	2
CATEGORIES =	devel

HOMEPAGE =	http://www.haskell.org/hmake/
MAINTAINER =	Matthias Kilian <kili@openbsd.org>

MASTER_SITES =	${HOMEPAGE} \
		http://www.cs.york.ac.uk/fp/hmake/ \
		ftp://ftp.cs.york.ac.uk/pub/haskell/hmake/

# BSD style w/o advertising clause
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

NO_REGRESS =		Yes
USE_GMAKE =		Yes
USE_GROFF =	Yes
CONFIGURE_STYLE =	simple

WANTLIB +=		c m pthread

.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64"
WANTLIB +=		gmp util
MODULES =		lang/ghc converters/libiconv
MODGHC_BUILD =		nort
LIB_DEPENDS =		::devel/gmp
CONFIGURE_ARGS =	--buildwith=ghc
WANTLIB +=		ncurses readline
# No LIB_DEPENDS; hmake should be usable without all the ghc packages
# installed.
BUILD_DEPENDS +=	::devel/hs-readline
.else
BUILD_DEPENDS +=	::lang/nhc98
CONFIGURE_ARGS =	--buildwith=nhc98
.endif

post-install:
	chown -R ${BINOWN}:${BINGRP} ${PREFIX}/lib/hmake
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hmake
	${INSTALL_DATA} ${WRKSRC}/docs/hmake/* ${PREFIX}/share/doc/hmake
	rm ${PREFIX}/man/man1/hmake.1.orig

.include <bsd.port.mk>
