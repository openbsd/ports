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
MODCABAL_VERSION =	10.20260717

# Manual reimplementation of postCopy hook of Setup.hs
post-install:
	@ln -s git-annex ${PREFIX}/bin/git-annex-shell
	@ln -s git-annex ${PREFIX}/bin/git-remote-annex
	@ln -s git-annex ${PREFIX}/bin/git-remote-tor-annex

# Benchmark disabled to skip criterion-measurement missing support for
# aarch64 in old versions.
#
# The upper bounds below work around upstream breakage the solver can't
# see; recheck them at each update:
# - crypton >=1.1 switched from `memory` to `ram`, so Data.ByteArray
#   (memory) no longer has ByteArrayAccess (Digest _). yesod-static
#   still imports it from memory.
# - aws >=0.25.3 made the same memory->ram switch, so it needs the
#   crypton we exclude above.
# - magic >=2 changed its API away from what Annex/Magic.hs expects
#   (magicOpen takes one MagicFlags, magicFile returns Text).
#
# Regenerating the manifest in a scratch dir (order matters,
# v2-configure rewrites cabal.project.local):
# % cabal v2-configure --flags='-benchmark'
# % echo 'constraints: crypton <1.1, aws <0.25.3, magic <2' >> cabal.project.local
# % cabal build --dry-run
# % cabal-bundler --openbsd git-annex-10.20260717 --plan=dist-newstyle/cache/plan.json
MODCABAL_FLAGS		= -benchmark

.include "cabal.inc"

.include <bsd.port.mk>
