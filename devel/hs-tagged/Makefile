# $OpenBSD: Makefile,v 1.1.1.1 2010/12/08 23:24:29 jasper Exp $

COMMENT=		provides newtype wrappers for phantom types

DISTNAME=		tagged-0.1.1
CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

RUN_DEPENDS =		hs-data-default->=0.2,<3:devel/hs-data-default
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
