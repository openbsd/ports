# $OpenBSD: Makefile,v 1.7 2012/09/02 21:29:17 kili Exp $

COMMENT =		portable POSIX-compatibility layer

DISTNAME =		unix-compat-0.3.0.1
CATEGORIES =		devel

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD4
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
