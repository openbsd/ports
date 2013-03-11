# $OpenBSD: Makefile,v 1.4 2013/03/11 02:52:05 espie Exp $

COMMENT =		low-level binding to libpq

DISTNAME =		postgresql-libpq-0.8.2.2
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
