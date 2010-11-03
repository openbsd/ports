# $OpenBSD: Makefile,v 1.3 2010/11/03 22:13:39 kili Exp $

COMMENT =		efficient packed Unicode text type

DISTNAME =		text-0.7.2.1
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

LIB_DEPENDS =		:hs-deepseq->=1.1.0.0:devel/hs-deepseq
RUN_DEPENDS =		${LIB_DEPENDS}

.include <bsd.port.mk>
