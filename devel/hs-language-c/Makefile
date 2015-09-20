# $OpenBSD: Makefile,v 1.18 2015/09/20 18:29:20 kili Exp $

COMMENT =		analysis and generation of C code in Haskell

DISTNAME =		language-c-0.4.7
REVISION =		0
CATEGORIES =		devel

HOMEPAGE =		http://www.sivity.net/projects/language.c/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	BgfhJb3fC0iLmISUtVj00b

BUILD_DEPENDS =		devel/alex \
			devel/happy \
			${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-syb

NO_TEST =		Yes

.include <bsd.port.mk>
