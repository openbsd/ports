# $OpenBSD: Makefile,v 1.6 2011/09/16 09:24:51 espie Exp $

COMMENT =		portable POSIX-compatibility layer

DISTNAME =		unix-compat-0.2
REVISION=		0
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
