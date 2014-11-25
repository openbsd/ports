# $OpenBSD: Makefile,v 1.11 2014/11/25 22:11:03 kili Exp $

COMMENT =		low-level binding to libpq

DISTNAME =		postgresql-libpq-0.9.0.1
REVISION =		0
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
