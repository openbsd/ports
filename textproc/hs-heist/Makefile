# $OpenBSD: Makefile,v 1.1.1.1 2010/09/19 16:29:38 jim Exp $

COMMENT =		xhtml templating system

DISTNAME =		heist-0.2.3
CATEGORIES =		textproc

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		::textproc/hs-hexpat
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
