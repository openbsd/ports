# $OpenBSD: Makefile,v 1.11 2011/09/16 09:24:51 espie Exp $

COMMENT =		parallel programming library

DISTNAME =		parallel-3.1.0.1
REVISION=		0
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		hs-deepseq->=1.1,<1.2:devel/hs-deepseq
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
