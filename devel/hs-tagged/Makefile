# $OpenBSD: Makefile,v 1.4 2011/09/16 09:24:51 espie Exp $

COMMENT=		provides newtype wrappers for phantom types

DISTNAME=		tagged-0.2
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
