# $OpenBSD: Makefile,v 1.13 2013/05/04 21:17:17 kili Exp $

COMMENT =		adapter to convert attoparsec Parsers into Iteratees

DISTNAME =		attoparsec-iteratee-0.4.0
REVISION =		2
CATEGORIES =		textproc

MAINTAINER =		Jim Razmus II <jim@openbsd.org>, \
			Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-iteratee>=0.7,<0.9 \
			devel/hs-transformers \
			textproc/hs-attoparsec>=0.8,<0.11
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
