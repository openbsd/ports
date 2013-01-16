# $OpenBSD: Makefile,v 1.8 2013/01/16 18:31:25 kili Exp $

COMMENT =		Haskell API search engine

DISTNAME =		hoogle-4.2.11
REVISION =		2
CATEGORIES =		devel
HOMEPAGE =		http://www.haskell.org/hoogle/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# GPLv2, some files are MIT and/or BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc converters/libiconv

MODGHC_BUILD =		cabal hackage haddock register

WANTLIB =		c m pthread util

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-case-insensitive>=0.2,<0.5 \
			devel/hs-cmdargs>=0.7,<0.10 \
			devel/hs-conduit>=0.2,<0.5 \
			devel/hs-safe \
			devel/hs-binary \
			devel/hs-parsec>=2.1 \
			devel/hs-random \
			devel/hs-transformers>=0.2,<0.4 \
			devel/hs-uniplate>=1.6,<1.7 \
			lang/hs-haskell-src-exts>=1.12,<1.14 \
			devel/hs-blaze-builder>=0.2,<0.4 \
			devel/hs-enumerator>=0.4,<0.5 \
			textproc/hs-tagsoup>=0.11,<0.13 \
			www/hs-http-types>=0.6,<0.7 \
			www/hs-wai>=1.1,<1.3 \
			www/hs-warp>=1.1,<1.3 \
			net/wget

HOOGLEDB =		/var/db/hoogle
SUBST_VARS =		HOOGLEDB

# Quick hack until I figure how to do this properly with cabal:
post-install:
	${INSTALL_DATA_DIR} ${WRKINST}${HOOGLEDB}
	ln -s ${HOOGLEDB} ${PREFIX}/share/hs-${DISTNAME}/databases

.include <bsd.port.mk>
