# $OpenBSD: Makefile,v 1.17 2015/09/22 21:06:19 kili Exp $

COMMENT =		mid-level PostgreSQL client library

DISTNAME =		postgresql-simple-0.4.9.0
REVISION =		0
CATEGORIES =		databases

HOMEPAGE =		https://github.com/lpsmith/postgresql-simple

MAINTAINER =		David Schaefer <dawedawe@gmx.de>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	BQZpJFGK5S98sVdgR11b1k

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		databases/hs-postgresql-libpq>=0.9 \
			devel/hs-aeson>=0.6 \
			devel/hs-blaze-builder \
			devel/hs-blaze-textual \
			devel/hs-case-insensitive \
			devel/hs-hashable \
			devel/hs-scientific \
			devel/hs-text>=0.11.1 \
			devel/hs-uuid>=1.3.1 \
			devel/hs-vector \
			textproc/hs-attoparsec>=0.10.3

.include <bsd.port.mk>
