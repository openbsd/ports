# $OpenBSD: Makefile,v 1.8 2015/07/09 10:22:37 dcoppa Exp $

COMMENT =		basic types for representing XML

DISTNAME =		xml-types-0.3.6
CATEGORIES =		textproc

HOMEPAGE =		https://john-millikin.com/software/haskell-xml/

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-text
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
