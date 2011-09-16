# $OpenBSD: Makefile,v 1.14 2011/09/16 11:41:40 espie Exp $

COMMENT =		utilities for manipulating XML documents

DISTNAME =		HaXml-1.20.2
REVISION=	0
CATEGORIES =		textproc
HOMEPAGE =		http://projects.haskell.org/HaXml/

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

WANTLIB =		c gmp m pthread util

# GPLv2 / LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc converters/libiconv

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		textproc/hs-polyparse
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
