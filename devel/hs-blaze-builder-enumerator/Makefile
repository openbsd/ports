# $OpenBSD: Makefile,v 1.1.1.1 2011/09/24 19:01:52 kili Exp $

COMMENT =		integrate blaze-builder and enumerator

DISTNAME =		blaze-builder-enumerator-0.2.0.2
CATEGORIES =		devel
HOMEPAGE =		https://github.com/meiersi/blaze-builder-enumerator

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		hs-blaze-builder->=0.2.1.4,<0.4:devel/hs-blaze-builder \
			hs-enumerator->=0.4.3.1,<0.5:devel/hs-enumerator \
			hs-transformers->=0.2,<0.3:devel/hs-transformers

.include <bsd.port.mk>
