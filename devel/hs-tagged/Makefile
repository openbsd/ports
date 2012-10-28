# $OpenBSD: Makefile,v 1.6 2012/10/28 23:29:19 kili Exp $

COMMENT=		provides newtype wrappers for phantom types

DISTNAME=		tagged-0.4.4
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

.include <bsd.port.mk>
