# $OpenBSD: Makefile,v 1.20 2016/01/20 16:22:26 kili Exp $

COMMENT =		analysis and generation of C code in Haskell

DISTNAME =		language-c-0.4.7
REVISION =		2
CATEGORIES =		devel

HOMEPAGE =		http://www.sivity.net/projects/language.c/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	IIvFSwa7ayRGnnggE8DLBX

BUILD_DEPENDS =		devel/alex \
			devel/happy \
			${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-syb

NO_TEST =		Yes

.include <bsd.port.mk>
