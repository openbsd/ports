# $OpenBSD: Makefile,v 1.3 2013/01/20 18:02:12 kili Exp $

COMMENT =		lifted IO operations from the base library

DISTNAME =		lifted-base-0.1.1.1
REVISION =		1
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

RUN_DEPENDS =		devel/hs-base-unicode-symbols>=0.1.1,<0.3 \
			devel/hs-monad-control>=0.3,<0.4 \
			devel/hs-transformers-base>=0.4,<0.5

.include <bsd.port.mk>
