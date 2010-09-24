# $OpenBSD: Makefile,v 1.2 2010/09/24 16:13:15 jim Exp $

COMMENT =		Snap Haskell Web Framework Server

DISTNAME =		snap-server-0.2.12
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

RUN_DEPENDS +=		::devel/hs-cereal \
			::devel/hs-directory-tree \
			::devel/hs-dlist \
			::devel/hs-iteratee \
			::devel/hs-murmur-hash \
			::devel/hs-monads-fd \
			::devel/hs-network \
			::devel/hs-PSQueue \
			::devel/hs-sendfile \
			::devel/hs-transformers \
			::devel/hs-text \
			::devel/hs-unix-compat \
			::devel/hs-vector \
			::net/hs-network-bytestring \
			::textproc/hs-attoparsec-iteratee \
			::textproc/hs-bytestring-nums \
			::textproc/hs-bytestring-show \
			::www/hs-snap-core
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
