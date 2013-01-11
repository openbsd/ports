# $OpenBSD: Makefile,v 1.1.1.1 2013/01/11 20:19:49 kili Exp $

COMMENT =		low-level binding to libpq

DISTNAME =		postgresql-libpq-0.8.2.1
CATEGORIES =		databases

HOMEPAGE =		https://github.com/lpsmith/postgresql-libpq

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		databases/postgresql

.include <bsd.port.mk>
