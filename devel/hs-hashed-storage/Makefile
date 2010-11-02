# $OpenBSD: Makefile,v 1.10 2010/11/02 20:21:40 kili Exp $

COMMENT =		hashed file storage support code for Haskell

DISTNAME =		hashed-storage-0.5.2
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

LIB_DEPENDS =		::devel/hs-binary \
			::devel/hs-dataenc \
			:hs-mmap->=0.5,<0.6:devel/hs-mmap \
			::archivers/hs-zlib
RUN_DEPENDS =		${LIB_DEPENDS}

NO_REGRESS =		Yes

.include <bsd.port.mk>
