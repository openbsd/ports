# $OpenBSD: Makefile,v 1.1.1.1 2012/08/30 20:49:42 kili Exp $

COMMENT =		convert streams of builders to streams of bytestrings

DISTNAME =		blaze-builder-conduit-0.4.0.2
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-blaze-builder>=0.2.1.4,<0.4 \
			devel/hs-conduit>=0.4,<0.5 \
			devel/hs-text>=0.11 \
			devel/hs-transformers>=0.2.2,<0.4

.include <bsd.port.mk>
