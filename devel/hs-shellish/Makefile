# $OpenBSD: Makefile,v 1.1.1.1 2012/05/07 18:49:02 kili Exp $

COMMENT =		shell-/perl- like (systems) programming in Haskell

DISTNAME =		shellish-0.1.4
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/hs-mtl \
			devel/hs-unix-compat \
			devel/hs-strict

.include <bsd.port.mk>
