# $OpenBSD: Makefile,v 1.2 2012/04/28 19:25:25 kili Exp $

BROKEN=			doesn't build with newer attoparsec
COMMENT=		fast combinator parsing for texts

DISTNAME=		attoparsec-text-0.8.5.1
CATEGORIES=		textproc

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

RUN_DEPENDS =		devel/hs-text \
			textproc/hs-attoparsec
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
