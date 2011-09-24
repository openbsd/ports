# $OpenBSD: Makefile,v 1.1.1.1 2011/09/24 19:04:46 kili Exp $

COMMENT=		XML parser and renderer with HTML 5 quirks mode

DISTNAME=		xmlhtml-0.1.5.2
CATEGORIES=		textproc

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

RUN_DEPENDS =		devel/hs-blaze-builder \
			devel/hs-parsec \
			devel/hs-text \
			textproc/hs-blaze-html

BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
