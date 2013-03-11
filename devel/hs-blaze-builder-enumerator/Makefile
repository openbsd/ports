# $OpenBSD: Makefile,v 1.5 2013/03/11 10:50:06 espie Exp $

COMMENT =		integrate blaze-builder and enumerator

DISTNAME =		blaze-builder-enumerator-0.2.0.4
REVISION =		1
CATEGORIES =		devel
HOMEPAGE =		https://github.com/meiersi/blaze-builder-enumerator

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-blaze-builder>=0.2.1.4,<0.4 \
			devel/hs-enumerator>=0.4.3.1,<0.5 \
			devel/hs-transformers>=0.2,<0.4

.include <bsd.port.mk>
