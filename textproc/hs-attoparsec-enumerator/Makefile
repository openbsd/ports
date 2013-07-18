# $OpenBSD: Makefile,v 1.11 2013/07/18 22:10:50 kili Exp $

COMMENT=		convert an Attoparsec parser into an iteratee

DISTNAME=		attoparsec-enumerator-0.3.1
CATEGORIES=		textproc

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

RUN_DEPENDS =		devel/hs-enumerator>=0.4,<0.5 \
			devel/hs-text \
			textproc/hs-attoparsec>=0.10,<0.11
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
