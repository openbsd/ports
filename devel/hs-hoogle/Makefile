# $OpenBSD: Makefile,v 1.13 2014/12/15 22:13:35 kili Exp $

COMMENT =		Haskell API search engine

# XXX versions newer than 4.2.26 need a new dependency 'shake'.
# XXX versions newer than 4.2.34 need a newer haskell-src-exts.

DISTNAME =		hoogle-4.2.26
CATEGORIES =		devel
HOMEPAGE =		http://www.haskell.org/hoogle/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# GPLv2, some files are MIT and/or BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc converters/libiconv

MODGHC_BUILD =		cabal hackage haddock register

WANTLIB =		c m pthread util

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-aeson>=0.6.1 \
			devel/hs-blaze-builder>=0.2 \
			devel/hs-case-insensitive>=0.2 \
			devel/hs-cmdargs>=0.7 \
			devel/hs-conduit>=0.2 \
			devel/hs-parsec>=2.1 \
			devel/hs-random \
			devel/hs-safe \
			devel/hs-text>=0.11 \
			devel/hs-uniplate>=1.6 \
			lang/hs-haskell-src-exts>=1.14,<1.15 \
			textproc/hs-tagsoup>=0.11 \
			www/hs-http-types>=0.7 \
			www/hs-wai>=1.1 \
			www/hs-warp>=1.1

HOOGLEDB =		/var/db/hoogle
SUBST_VARS =		HOOGLEDB

# Quick hack until I figure how to do this properly with cabal:
post-install:
	${INSTALL_DATA_DIR} ${WRKINST}${HOOGLEDB}
	ln -s ${HOOGLEDB} ${PREFIX}/share/hs-${DISTNAME}/databases

.include <bsd.port.mk>
