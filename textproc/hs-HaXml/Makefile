# $OpenBSD: Makefile,v 1.5 2010/06/06 10:06:45 kili Exp $

COMMENT =		XML parsing utilities for Haskell

DISTNAME =		HaXml-1.13.3
# Don't forget the `hs-' prefix when bumping PKGNAME!
PKGNAME =		hs-${DISTNAME}p3
CATEGORIES =		textproc
HOMEPAGE =		http://www.cs.york.ac.uk/fp/HaXml/

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

WANTLIB =		c m util

# GPLv2 / LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc converters/libiconv

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
