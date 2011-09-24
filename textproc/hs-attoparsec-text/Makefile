# $OpenBSD: Makefile,v 1.1.1.1 2011/09/24 19:03:33 kili Exp $

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
