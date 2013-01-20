# $OpenBSD: Makefile,v 1.16 2013/01/20 18:02:53 kili Exp $

COMMENT =		Monadic parser combinators

DISTNAME =		parsec-3.1.3
REVISION =		0
CATEGORIES =		devel
HOMEPAGE =		http://www.cs.uu.nl/~daan/parsec.html

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-mtl \
			devel/hs-text>=0.2,<0.12
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
