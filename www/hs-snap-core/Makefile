# $OpenBSD: Makefile,v 1.13 2011/09/24 19:08:45 kili Exp $

COMMENT =		Snap Haskell Web Framework

DISTNAME =		snap-core-0.5.3.1
CATEGORIES =		www
HOMEPAGE =		http://snapframework.com/

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		archivers/hs-zlib \
			devel/hs-blaze-builder \
			devel/hs-case-insensitive \
			devel/hs-directory-tree \
			devel/hs-dlist \
			devel/hs-enumerator \
			devel/hs-MonadCatchIO-transformers \
			devel/hs-mtl \
			devel/hs-text \
			devel/hs-transformers \
			devel/hs-unix-compat \
			devel/hs-vector \
			textproc/hs-attoparsec \
			textproc/hs-attoparsec-enumerator \
			textproc/hs-bytestring-nums \
			textproc/hs-bytestring-show
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
