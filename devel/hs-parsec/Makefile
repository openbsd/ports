# $OpenBSD: Makefile,v 1.17 2013/03/11 10:50:08 espie Exp $

COMMENT =		Monadic parser combinators

DISTNAME =		parsec-3.1.3
REVISION =		0
CATEGORIES =		devel
HOMEPAGE =		http://www.cs.uu.nl/~daan/parsec.html

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-mtl \
			devel/hs-text>=0.2,<0.12
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
