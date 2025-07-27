COMMENT =	git remote helper to interact with mercurial repositories

GH_ACCOUNT =	glandium
GH_PROJECT =	git-cinnabar
GH_TAGNAME =	0.7.3
CATEGORIES =	devel

# patches are applied to this version
DIST_TUPLE +=	github git-for-windows git 4d32d83913170b86f9753fca10e75cdb2223d1cc git-core

# MPL-2.0
PERMIT_PACKAGE =	Yes

MODULES =		devel/cargo
CONFIGURE_STYLE =	cargo

LIB_DEPENDS =	net/curl \
		archivers/zstd \
		archivers/bzip2
RUN_DEPENDS =	devel/mercurial
BUILD_DEPENDS =	devel/gmake

WANTLIB +=	${MODCARGO_WANTLIB} bz2 curl z zstd

# so that git can use git-cinnabar by default as a remote hg handler
post-install:
	ln -sf ${TRUEPREFIX}/bin/git-cinnabar ${PREFIX}/bin/git-remote-hg

.include "crates.inc"

.include <bsd.port.mk>
