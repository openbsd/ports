# $OpenBSD: Makefile,v 1.12 2012/01/21 12:04:59 kili Exp $

COMMENT =		Snap Haskell Web Framework Server

DISTNAME =		snap-server-0.5.3.1
REVISION =		0
CATEGORIES =		www
HOMEPAGE =		http://snapframework.com/

MAINTAINER =		Jim Razmus II <jim@openbsd.org>, \
			Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-binary \
			devel/hs-blaze-builder \
			devel/hs-blaze-builder-enumerator \
			devel/hs-case-insensitive \
			devel/hs-directory-tree \
			devel/hs-enumerator \
			devel/hs-MonadCatchIO-transformers \
			devel/hs-murmur-hash \
			devel/hs-mtl \
			devel/hs-network \
			devel/hs-PSQueue \
			devel/hs-sendfile \
			devel/hs-transformers \
			devel/hs-text \
			devel/hs-unix-compat \
			devel/hs-vector \
			devel/hs-vector-algorithms \
			textproc/hs-attoparsec-enumerator \
			textproc/hs-bytestring-nums \
			www/hs-snap-core
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
