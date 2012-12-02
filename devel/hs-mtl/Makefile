# $OpenBSD: Makefile,v 1.5 2012/12/02 20:27:43 kili Exp $

COMMENT =		monad classes using functional dependencies

DISTNAME =		mtl-2.1.2
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-transformers>=0.3,<0.4

.include <bsd.port.mk>
