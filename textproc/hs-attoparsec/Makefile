# $OpenBSD: Makefile,v 1.6 2012/01/21 12:02:18 kili Exp $

COMMENT =		fast combinator parsing for bytestrings

DISTNAME =		attoparsec-0.8.6.0
CATEGORIES =		textproc

MAINTAINER =		Jim Razmus II <jim@openbsd.org>, \
			Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-deepseq
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
