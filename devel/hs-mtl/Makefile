# $OpenBSD: Makefile,v 1.2 2011/09/16 09:24:51 espie Exp $

COMMENT =		monad classes using functional dependencies

DISTNAME =		mtl-2.0.1.0
REVISION=		0
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
RUN_DEPENDS =		devel/hs-transformers

.include <bsd.port.mk>
