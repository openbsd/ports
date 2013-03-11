# $OpenBSD: Makefile,v 1.19 2013/03/11 11:42:41 espie Exp $

COMMENT =		utilities for manipulating XML documents

DISTNAME =		HaXml-1.23.3
REVISION =		2
CATEGORIES =		textproc
HOMEPAGE =		http://projects.haskell.org/HaXml/

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

WANTLIB =		c m pthread util

# GPLv2 / LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc converters/libiconv

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-random \
			textproc/hs-polyparse>=1.5
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
