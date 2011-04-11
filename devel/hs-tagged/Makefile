# $OpenBSD: Makefile,v 1.2 2011/04/11 14:45:15 kili Exp $

COMMENT=		provides newtype wrappers for phantom types

DISTNAME=		tagged-0.1.1
REVISION=		0
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
