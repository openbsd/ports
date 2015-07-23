# $OpenBSD: Makefile,v 1.10 2015/07/23 18:05:51 kili Exp $

COMMENT =		web server for WAI applications

DISTNAME =		warp-1.3.9
REVISION =		2
CATEGORIES =		devel www
HOMEPAGE =		https://github.com/snoyberg/warp

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-blaze-builder-conduit>=0.5,<1.1 \
			devel/hs-blaze-builder>=0.2.1.4,<0.4 \
			devel/hs-case-insensitive>=0.2 \
			devel/hs-conduit>=0.5,<1.1 \
			devel/hs-lifted-base>=0.1 \
			devel/hs-network-conduit>=0.5,<1.1 \
			devel/hs-network>=2.3 \
			devel/hs-simple-sendfile>=0.2.7,<0.3 \
			devel/hs-unix-compat>=0.2 \
			devel/hs-void \
			www/hs-http-attoparsec \
			www/hs-http-types>=0.7 \
			www/hs-wai>=1.3,<1.5

.include <bsd.port.mk>
