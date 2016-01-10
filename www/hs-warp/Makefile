# $OpenBSD: Makefile,v 1.13 2016/01/10 10:17:21 kili Exp $

# XXX smallest version buildable with ghc-7.10 (3.0.4) needs new
# dependencies 'auto-update', ''http-date', 'streaming-commons'.

BROKEN =		needs new dependencies

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

RUN_DEPENDS =		devel/hs-blaze-builder>=0.2.1.4,<0.4 \
			devel/hs-case-insensitive>=0.2 \
			devel/hs-conduit>=0.5,<1.1 \
			devel/hs-lifted-base>=0.1 \
			devel/hs-network>=2.3 \
			devel/hs-simple-sendfile>=0.2.7,<0.3 \
			devel/hs-unix-compat>=0.2 \
			devel/hs-void \
			www/hs-http-types>=0.7 \
			www/hs-wai>=1.3,<1.5

.include <bsd.port.mk>
