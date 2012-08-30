# $OpenBSD: Makefile,v 1.1.1.1 2012/08/30 20:55:05 kili Exp $

COMMENT =		persistent store for values of arbitrary types

DISTNAME =		vault-0.1.0.0
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
