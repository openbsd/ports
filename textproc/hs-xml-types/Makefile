# $OpenBSD: Makefile,v 1.4 2013/03/11 11:42:41 espie Exp $

COMMENT =		basic types for representing XML

DISTNAME =		xml-types-0.3.3
REVISION =		1
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
