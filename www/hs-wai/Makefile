# $OpenBSD: Makefile,v 1.8 2013/08/07 21:58:08 naddy Exp $

COMMENT =		web application interface

DISTNAME =		wai-1.4.0.1
REVISION =		0
CATEGORIES =		devel www
HOMEPAGE =		https://github.com/snoyberg/wai

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-blaze-builder>=0.2.1.4,<0.4 \
			devel/hs-conduit>=0.5,<1.1 \
			devel/hs-network>=2.2.1.5 \
			devel/hs-text>=0.7 \
			devel/hs-transformers>=0.2.2 \
			devel/hs-vault>=0.1,<0.3 \
			www/hs-http-types>=0.7

.include <bsd.port.mk>
