# $OpenBSD: Makefile,v 1.2 2010/05/14 09:08:27 kili Exp $

COMMENT =		Software Transactional Memory

DISTNAME =		stm-2.1.1.2
PKGNAME =		hs-${DISTNAME}p0
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
