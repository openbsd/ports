# $OpenBSD: Makefile,v 1.9 2015/09/20 16:23:20 kili Exp $

COMMENT =		basic types for representing XML

DISTNAME =		xml-types-0.3.6
REVISION =		0
CATEGORIES =		textproc

HOMEPAGE =		https://john-millikin.com/software/haskell-xml/

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	5RHNNJ6svyf6yzhyHa61vO

RUN_DEPENDS =		devel/hs-text
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
