# $OpenBSD: Makefile,v 1.6 2010/09/12 11:47:14 kili Exp $

COMMENT =	command-line interface for Cabal and Hackage

DISTNAME =	cabal-install-0.8.2
CATEGORIES =	devel

HOMEPAGE =	http://www.haskell.org/cabal/

MAINTAINER =	Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =		c gmp m pthread util z

MODULES =		lang/ghc converters/libiconv
MODGHC_BUILD =          cabal hackage nort

BUILD_DEPENDS +=	:hs-network->=1,<3:devel/hs-network \
			:hs-HTTP->=4000.0.2,<4001:net/hs-HTTP \
			:hs-zlib->=0.4,<0.6:archivers/hs-zlib

LIB_DEPENDS =		::devel/gmp

.include <bsd.port.mk>
