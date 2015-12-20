# $OpenBSD: Makefile,v 1.10 2015/12/20 11:34:52 kili Exp $

COMMENT =		basic types for representing XML

DISTNAME =		xml-types-0.3.6
REVISION =		1
CATEGORIES =		textproc

HOMEPAGE =		https://john-millikin.com/software/haskell-xml/

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	151QYEhtx8K8fdljg93q7Q

RUN_DEPENDS =		devel/hs-text
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
