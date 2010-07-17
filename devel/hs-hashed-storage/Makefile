# $OpenBSD: Makefile,v 1.8 2010/07/17 13:43:37 kili Exp $

COMMENT =		hashed file storage support code for Haskell

DISTNAME =		hashed-storage-0.4.13
REVISION =		4
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
			:hs-mmap->=0.4,<0.5:devel/hs-mmap \
			::archivers/hs-zlib
RUN_DEPENDS =		${LIB_DEPENDS}

NO_REGRESS =		Yes

.include <bsd.port.mk>
