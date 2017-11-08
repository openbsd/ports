# $OpenBSD: Makefile,v 1.15 2017/11/08 19:00:36 kili Exp $

COMMENT =		low-level binding to libpq

DISTNAME =		postgresql-libpq-0.9.0.1
REVISION =		4
CATEGORIES =		databases

HOMEPAGE =		https://github.com/lpsmith/postgresql-libpq

MAINTAINER =		David Schaefer <dawedawe@gmx.de>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	Bbaszd4skMkAWBmqbk5JVg

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		databases/postgresql

.include <bsd.port.mk>
