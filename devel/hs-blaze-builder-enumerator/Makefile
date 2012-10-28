# $OpenBSD: Makefile,v 1.3 2012/10/28 23:26:38 kili Exp $

COMMENT =		integrate blaze-builder and enumerator

DISTNAME =		blaze-builder-enumerator-0.2.0.4
REVISION =		0
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
RUN_DEPENDS =		devel/hs-blaze-builder>=0.2.1.4,<0.4 \
			devel/hs-enumerator>=0.4.3.1,<0.5 \
			devel/hs-transformers>=0.2,<0.4

.include <bsd.port.mk>
