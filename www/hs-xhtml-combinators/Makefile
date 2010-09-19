# $OpenBSD: Makefile,v 1.1.1.1 2010/09/19 16:42:16 jim Exp $

COMMENT =		fast and easy to use XHTML 1.0 Strict combinators

DISTNAME =		xhtml-combinators-0.2.2
CATEGORIES =		www

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		::textproc/hs-xml
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
