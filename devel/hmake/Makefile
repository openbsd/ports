# $OpenBSD: Makefile,v 1.23 2015/07/18 22:09:15 kili Exp $

COMMENT =	compilation manager for Haskell programs
 
DISTNAME =	hmake-3.14
REVISION =	4
CATEGORIES =	devel

HOMEPAGE =	http://code.haskell.org/~malcolm/hmake/docs/
MAINTAINER =	Matthias Kilian <kili@openbsd.org>

MASTER_SITES =	https://openbsd.dead-parrot.de/distfiles/

# BSD style w/o advertising clause
PERMIT_PACKAGE_CDROM =	Yes

NO_TEST =		Yes
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
