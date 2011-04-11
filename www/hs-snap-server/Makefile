# $OpenBSD: Makefile,v 1.8 2011/04/11 14:55:58 kili Exp $

COMMENT =		Snap Haskell Web Framework Server

DISTNAME =		snap-server-0.2.16.2
REVISION =		1
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

RUN_DEPENDS +=		devel/hs-binary \
			devel/hs-cereal \
			devel/hs-directory-tree \
			devel/hs-dlist \
			devel/hs-iteratee \
			devel/hs-murmur-hash \
			devel/hs-monads-fd \
			devel/hs-network \
			devel/hs-PSQueue \
			devel/hs-sendfile \
			devel/hs-transformers \
			devel/hs-text \
			devel/hs-unix-compat \
			devel/hs-vector \
			devel/hs-vector-algorithms \
			textproc/hs-attoparsec-iteratee \
			textproc/hs-bytestring-nums \
			textproc/hs-bytestring-show \
			www/hs-snap-core
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
