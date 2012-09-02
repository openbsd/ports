# $OpenBSD: Makefile,v 1.2 2012/09/02 21:26:43 kili Exp $

COMMENT=		fast HTML combinator library

DISTNAME=		blaze-html-0.5.0.0
CATEGORIES=		textproc

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

RUN_DEPENDS =		devel/hs-blaze-builder>=0.2,<0.4 \
			devel/hs-text>=0.10,<0.12 \
			textproc/hs-blaze-markup>=0.5.1,<0.6

BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
