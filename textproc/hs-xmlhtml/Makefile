# $OpenBSD: Makefile,v 1.4 2013/01/20 18:06:28 kili Exp $

COMMENT=		XML parser and renderer with HTML 5 quirks mode

DISTNAME=		xmlhtml-0.2.0.2
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
			devel/hs-parsec>=3.1.2,<3.2 \
			devel/hs-text>=0.11,<0.12 \
			devel/hs-unordered-containers>=0.1.4,<0.3 \
			textproc/hs-blaze-html>=0.5,<0.6 \
			textproc/hs-blaze-markup>=0.5,<0.6

BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
