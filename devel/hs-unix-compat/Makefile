# $OpenBSD: Makefile,v 1.3 2010/11/03 22:13:39 kili Exp $

COMMENT =		portable POSIX-compatability layer

DISTNAME =		unix-compat-0.1.2.1
REVISION =		1
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
