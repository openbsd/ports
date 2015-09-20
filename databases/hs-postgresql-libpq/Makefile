# $OpenBSD: Makefile,v 1.12 2015/09/20 15:09:35 kili Exp $

COMMENT =		low-level binding to libpq

DISTNAME =		postgresql-libpq-0.9.0.1
REVISION =		1
CATEGORIES =		databases

HOMEPAGE =		https://github.com/lpsmith/postgresql-libpq

MAINTAINER =		David Schaefer <dawedawe@gmx.de>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	FLi1QD2pQ3TFlwmGsp7qS2

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		databases/postgresql

.include <bsd.port.mk>
