# $OpenBSD: Makefile,v 1.1.1.1 2012/01/23 21:00:49 kili Exp $

COMMENT =		fast JSON parsing and encoding

DISTNAME =		aeson-0.4.0.1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-blaze-builder>=0.2.1.4 \
			devel/hs-blaze-textual>=0.2.0.2 \
			devel/hs-deepseq \
			devel/hs-hashable>=1.1.2.0 \
			devel/hs-mtl \
			devel/hs-syb \
			devel/hs-text>=0.11.0.2 \
			devel/hs-unordered-containers>=0.1.3.0 \
			devel/hs-vector>=0.7.1 \
			textproc/hs-attoparsec>=0.8.6.1
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
