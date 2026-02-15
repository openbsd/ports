COMMENT =	use git to manage files without checking them in

CATEGORIES =	devel
HOMEPAGE =	https://git-annex.branchable.com/

# Many licenses listed in COPYRIGHT with AGPL-3+ being the most
# restrictive. All permit redistribution.
PERMIT_PACKAGE =	Yes

WANTLIB +=		c ffi gmp iconv m magic pthread util z

LIB_DEPENDS =		converters/libiconv \
			devel/gmp \
			devel/libffi \
			devel/libmagic

RUN_DEPENDS =		devel/git \
			net/rsync

BUILD_DEPENDS =		devel/git

MODULES =       	devel/cabal

MODCABAL_STEM		= git-annex
MODCABAL_VERSION =	10.20260115

# Manual reimplementation of postCopy hook of Setup.hs
post-install:
	@ln -s git-annex ${PREFIX}/bin/git-annex-shell
	@ln -s git-annex ${PREFIX}/bin/git-remote-annex
	@ln -s git-annex ${PREFIX}/bin/git-remote-tor-annex

# Benchmark disabled to skip criterion-measurement missing support for
# aarch64 in old versions:
# % cabal v2-configure --flags='-benchmark'
# % cabal build --dry-run --allow-newer
# % cabal-bundler --openbsd git-annex-10.20260115 --plan=dist-newstyle/cache/plan.json
MODCABAL_FLAGS		= -benchmark

.include "cabal.inc"

.include <bsd.port.mk>
