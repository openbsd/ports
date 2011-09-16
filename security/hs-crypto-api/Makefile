# $OpenBSD: Makefile,v 1.4 2011/09/16 11:41:38 espie Exp $

COMMENT=		generic interface for cryptographic operations

DISTNAME=		crypto-api-0.6.1
REVISION=		0
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

RUN_DEPENDS =		hs-cereal->=0.2,<0.4:devel/hs-cereal \
			devel/hs-largeword \
			hs-tagged->=0.1,<0.3:devel/hs-tagged
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
