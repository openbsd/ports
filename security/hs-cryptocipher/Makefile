# $OpenBSD: Makefile,v 1.1.1.1 2010/12/09 13:57:01 jasper Exp $

COMMENT=		symmetrical block and stream ciphers

DISTNAME=		cryptocipher-0.2
CATEGORIES=		security

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

RUN_DEPENDS =		devel/hs-vector \
			security/hs-crypto-api>=0.2
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
