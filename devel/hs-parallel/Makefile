# $OpenBSD: Makefile,v 1.8 2010/11/03 22:13:39 kili Exp $

COMMENT =		parallel programming library

DISTNAME =		parallel-2.2.0.1
REVISION =		6
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

LIB_DEPENDS =		:hs-deepseq->=1.1,<1.2:devel/hs-deepseq
RUN_DEPENDS =		${LIB_DEPENDS}

.include <bsd.port.mk>
