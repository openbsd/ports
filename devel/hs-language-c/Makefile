# $OpenBSD: Makefile,v 1.16 2013/03/11 10:50:07 espie Exp $

COMMENT =		analysis and generation of C code in Haskell

DISTNAME =		language-c-0.3.2.1
REVISION =		4
CATEGORIES =		devel

HOMEPAGE =		http://www.sivity.net/projects/language.c/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		devel/alex \
			devel/happy \
			${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-syb

NO_TEST =		Yes

.include <bsd.port.mk>
