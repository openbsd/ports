# $OpenBSD: Makefile,v 1.7 2013/01/20 18:01:36 kili Exp $

COMMENT =		list-like type supporting O(1) append

DISTNAME =		dlist-0.5
REVISION =		5
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
