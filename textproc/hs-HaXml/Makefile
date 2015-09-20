# $OpenBSD: Makefile,v 1.26 2015/09/20 20:55:07 kili Exp $

COMMENT =		utilities for manipulating XML documents

DISTNAME =		HaXml-1.25.3
REVISION =		0
CATEGORIES =		textproc
HOMEPAGE =		http://projects.haskell.org/HaXml/

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

WANTLIB =		c m pthread util

# GPLv2 / LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc converters/libiconv

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	As16z4K0A8U6Xfdb3jshPJ

RUN_DEPENDS +=		devel/hs-random \
			textproc/hs-polyparse>=1.10
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
