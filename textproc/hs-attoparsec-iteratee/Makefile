# $OpenBSD: Makefile,v 1.1.1.1 2010/09/19 16:04:27 jim Exp $

COMMENT =		adapter to convert attoparsec Parsers into Iteratees

DISTNAME =		attoparsec-iteratee-0.1.1
CATEGORIES =		textproc

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		::devel/hs-iteratee \
			::devel/hs-monads-fd \
			::devel/hs-transformers \
			::textproc/hs-attoparsec
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
