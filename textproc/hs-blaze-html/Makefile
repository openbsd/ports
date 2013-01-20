# $OpenBSD: Makefile,v 1.4 2013/01/20 18:06:14 kili Exp $

COMMENT=		fast HTML combinator library

DISTNAME=		blaze-html-0.5.0.0
REVISION=		1
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
