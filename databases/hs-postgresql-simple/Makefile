# $OpenBSD: Makefile,v 1.12 2014/03/31 21:48:05 kili Exp $

COMMENT =		mid-level PostgreSQL client library

DISTNAME =		postgresql-simple-0.4.0.2
CATEGORIES =		databases

HOMEPAGE =		https://github.com/lpsmith/postgresql-simple

MAINTAINER =		David Schaefer <dawedawe@gmx.de>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		databases/hs-postgresql-libpq>=0.6.2 \
			devel/hs-aeson>=0.6 \
			devel/hs-blaze-builder \
			devel/hs-blaze-textual \
			devel/hs-text>=0.11.1 \
			devel/hs-transformers \
			devel/hs-uuid>=1.3.1 \
			devel/hs-vector \
			textproc/hs-attoparsec>=0.10.3

.include <bsd.port.mk>
