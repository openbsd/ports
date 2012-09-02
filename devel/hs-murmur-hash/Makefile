# $OpenBSD: Makefile,v 1.6 2012/09/02 21:16:32 kili Exp $

COMMENT =		general purpose, non-cryptographic hashing function

DISTNAME =		murmur-hash-0.1.0.5
CATEGORIES =		devel

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
