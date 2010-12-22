# $OpenBSD: Makefile,v 1.8 2010/12/22 23:59:49 jasper Exp $

COMMENT =		Snap Haskell Web Framework

DISTNAME =		snap-core-0.2.16
REVISION =		1
CATEGORIES =		www
HOMEPAGE =		http://snapframework.com/

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		converters/libiconv \
			lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

WANTLIB +=		c gmp m pthread util z

RUN_DEPENDS +=		archivers/hs-zlib \
			devel/hs-cereal \
			devel/hs-directory-tree \
			devel/hs-dlist \
			devel/hs-iteratee \
			devel/hs-MonadCatchIO-transformers \
			devel/hs-monads-fd \
			devel/hs-transformers \
			devel/hs-text \
			devel/hs-unix-compat \
			textproc/hs-attoparsec \
			textproc/hs-bytestring-nums \
			textproc/hs-bytestring-show
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
