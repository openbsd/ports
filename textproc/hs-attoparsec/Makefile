# $OpenBSD: Makefile,v 1.11 2012/10/28 23:31:14 kili Exp $

COMMENT =		fast combinator parsing for bytestrings

DISTNAME =		attoparsec-0.10.1.0
REVISION =		2
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

RUN_DEPENDS =		devel/hs-text>=0.11.1.5
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
