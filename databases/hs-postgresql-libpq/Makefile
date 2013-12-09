# $OpenBSD: Makefile,v 1.7 2013/12/09 17:12:49 dcoppa Exp $

COMMENT =		low-level binding to libpq

DISTNAME =		postgresql-libpq-0.8.2.5
CATEGORIES =		databases

HOMEPAGE =		https://github.com/lpsmith/postgresql-libpq

MAINTAINER =		David Schaefer <dawedawe@gmx.de>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		databases/postgresql

.include <bsd.port.mk>
