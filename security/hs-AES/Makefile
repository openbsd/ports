# $OpenBSD: Makefile,v 1.1.1.1 2010/12/08 16:21:42 jasper Exp $

COMMENT=		fast AES encryption/decryption for bytestrings

DISTNAME=		AES-0.2.7
CATEGORIES=		security

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

RUN_DEPENDS =		devel/hs-cereal \
			devel/hs-monads-tf
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
