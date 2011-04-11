# $OpenBSD: Makefile,v 1.9 2011/04/11 14:45:15 kili Exp $

COMMENT =		interface to the GNU readline library

DISTNAME =		readline-1.0.1.0
REVISION =		6
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
