# $OpenBSD: Makefile,v 1.16 2012/10/28 23:30:36 kili Exp $

COMMENT =	Haskell cryptographic library
CATEGORIES =	security

DISTNAME =	Crypto-4.2.5
REVISION =	0
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
MODGHC_BUILD =		cabal hackage haddock register
RUN_DEPENDS =		devel/hs-HUnit \
			devel/hs-QuickCheck>=2.4.0.1 \
			devel/hs-random
BUILD_DEPENDS =		${RUN_DEPENDS}

do-regress:
.for t in HMACTest QuickTest RSATest SHA1Test SymmetricTest WordListTest
	cd ${WRKBUILD} && ./dist/build/$t/$t
.endfor

.include <bsd.port.mk>
