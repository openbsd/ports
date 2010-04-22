# $OpenBSD: Makefile,v 1.6 2010/04/22 21:58:53 kili Exp $

COMMENT =	Haskell cryptographic library
CATEGORIES =	security

DISTNAME =	Crypto-4.2.1
# Historically named with a lower case `c'.
PKGNAME =	${DISTNAME:S,C,hs-c,}
HOMEPAGE =	http://www.haskell.org/crypto/

MAINTAINER =	Matthias Kilian <kili@openbsd.org>

# 3 different licenses from 3 authors: BSD, GPL, BSD-ish
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc
MODGHC_BUILD=		cabal hackage haddock register
LIB_DEPENDS +=		::devel/hs-HUnit \
			:hs-QuickCheck->=2:devel/hs-QuickCheck

post-install:
	mv ${PREFIX}/share/${DISTNAME}/*.html ${PREFIX}/share/doc/${DISTNAME}
	rmdir ${PREFIX}/share/${DISTNAME}

do-regress:
.for t in HMACTest QuickTest RSATest SHA1Test SymmetricTest WordListTest
	cd ${WRKBUILD} && ./dist/build/$t/$t
.endfor

.include <bsd.port.mk>
