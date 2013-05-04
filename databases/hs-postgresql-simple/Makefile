# $OpenBSD: Makefile,v 1.7 2013/05/04 21:19:04 kili Exp $

COMMENT =		mid-level PostgreSQL client library

DISTNAME =		postgresql-simple-0.3.1.2
CATEGORIES =		databases

HOMEPAGE =		https://github.com/lpsmith/postgresql-simple

MAINTAINER =		David Schaefer <dawedawe@gmx.de>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		databases/hs-postgresql-libpq>=0.6.2 \
			devel/hs-blaze-builder \
			devel/hs-blaze-textual \
			devel/hs-text>=0.11.1 \
			devel/hs-transformers \
			devel/hs-vector \
			textproc/hs-attoparsec>=0.10.3

.include <bsd.port.mk>
