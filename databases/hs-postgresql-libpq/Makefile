# $OpenBSD: Makefile,v 1.14 2016/01/20 16:15:45 kili Exp $

COMMENT =		low-level binding to libpq

DISTNAME =		postgresql-libpq-0.9.0.1
REVISION =		3
CATEGORIES =		databases

HOMEPAGE =		https://github.com/lpsmith/postgresql-libpq

MAINTAINER =		David Schaefer <dawedawe@gmx.de>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	EwTHhmhC3nP0atcLa1ITZZ

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		databases/postgresql

.include <bsd.port.mk>
