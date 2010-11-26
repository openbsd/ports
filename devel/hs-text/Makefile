# $OpenBSD: Makefile,v 1.5 2010/11/26 07:19:00 espie Exp $

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

LIB_DEPENDS =		devel/hs-deepseq>=1.1.0.0
RUN_DEPENDS =		${LIB_DEPENDS}

.include <bsd.port.mk>
