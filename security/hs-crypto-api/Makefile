# $OpenBSD: Makefile,v 1.1.1.1 2010/12/08 23:28:29 jasper Exp $

COMMENT=		generic interface for cryptographic operations

DISTNAME=		crypto-api-0.2.1
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
			devel/hs-tagged
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
