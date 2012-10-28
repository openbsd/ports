# $OpenBSD: Makefile,v 1.17 2012/10/28 23:31:13 kili Exp $

COMMENT =		utilities for manipulating XML documents

DISTNAME =		HaXml-1.23.3
REVISION =		1
CATEGORIES =		textproc
HOMEPAGE =		http://projects.haskell.org/HaXml/

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

WANTLIB =		c m pthread util

# GPLv2 / LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc converters/libiconv

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-random \
			textproc/hs-polyparse>=1.5
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
