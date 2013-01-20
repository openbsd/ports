# $OpenBSD: Makefile,v 1.3 2013/01/20 18:00:41 kili Exp $

COMMENT =		mmap support for strict ByteStrings

DISTNAME =		bytestring-mmap-0.2.2
REVISION =		1
CATEGORIES =		devel
HOMEPAGE =		http://code.haskell.org/~dons/code/bytestring-mmap/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
