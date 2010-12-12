# $OpenBSD: Makefile,v 1.6 2010/12/12 16:24:03 jasper Exp $

COMMENT =		efficient packed Unicode text type

DISTNAME =		text-0.10.0.2
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

LIB_DEPENDS =		devel/hs-deepseq>=1.1.0.0
RUN_DEPENDS =		${LIB_DEPENDS}

.include <bsd.port.mk>
