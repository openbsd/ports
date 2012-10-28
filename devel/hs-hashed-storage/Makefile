# $OpenBSD: Makefile,v 1.17 2012/10/28 23:27:58 kili Exp $

COMMENT =		hashed file storage support code for Haskell

DISTNAME =		hashed-storage-0.5.9
REVISION =		0
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-binary \
			devel/hs-dataenc \
			hs-mmap->=0.5,<0.6:devel/hs-mmap \
			devel/hs-mtl \
			archivers/hs-zlib
BUILD_DEPENDS =		${RUN_DEPENDS}

NO_REGRESS =		Yes

.include <bsd.port.mk>
