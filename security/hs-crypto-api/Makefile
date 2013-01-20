# $OpenBSD: Makefile,v 1.9 2013/01/20 18:05:35 kili Exp $

COMMENT=		generic interface for cryptographic operations

DISTNAME=		crypto-api-0.10.2
REVISION=		1
CATEGORIES=		security net

HOMEPAGE=		http://trac.haskell.org/crypto-api/wiki

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

RUN_DEPENDS =		devel/hs-cereal>=0.2,<0.4 \
			devel/hs-largeword>=1.0.0 \
			devel/hs-tagged>=0.1,<0.5 \
			security/hs-entropy
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
