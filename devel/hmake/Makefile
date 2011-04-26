# $OpenBSD: Makefile,v 1.21 2011/04/26 14:51:32 jasper Exp $

COMMENT =	compilation manager for Haskell programs
 
DISTNAME =	hmake-3.14
REVISION =	3
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

BUILD_DEPENDS +=	lang/nhc98
CONFIGURE_ARGS =	--buildwith=nhc98

post-install:
	chown -R ${BINOWN}:${BINGRP} ${PREFIX}/lib/hmake
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hmake
	${INSTALL_DATA} ${WRKSRC}/docs/hmake/* ${PREFIX}/share/doc/hmake
	rm ${PREFIX}/man/man1/hmake.1.orig

.include <bsd.port.mk>
