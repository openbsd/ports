# $OpenBSD: Makefile,v 1.19 2013/03/11 10:50:07 espie Exp $

COMMENT =		hashed file storage support code for Haskell

DISTNAME =		hashed-storage-0.5.9
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-binary \
			devel/hs-dataenc \
			hs-mmap->=0.5,<0.6:devel/hs-mmap \
			devel/hs-mtl \
			archivers/hs-zlib
BUILD_DEPENDS =		${RUN_DEPENDS}

NO_TEST =		Yes

.include <bsd.port.mk>
