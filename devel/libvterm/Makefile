COMMENT =	VT220/xterm/ECMA-48 terminal emulator library
# No releases, so use date and a git hash.
# Note that the github repo is a mirror of a bzr repo.
VERSION =	20191009
DISTNAME =	libvterm-${VERSION}

GH_ACCOUNT =	neovim
GH_PROJECT =	libvterm
# Note this git sha is from the nvim branch because
# Neovim requires patches from this branch to build.
# see https://github.com/neovim/neovim/wiki/Deps
GH_COMMIT =	7c72294d84ce20da4c27362dbd7fa4b08cfc91da

SHARED_LIBS +=  vterm                     1.0 # 0.0

CATEGORIES =	devel

# MIT
PERMIT_PACKAGE =	Yes

DEBUG_PACKAGES =	${BUILD_PACKAGES}

WANTLIB += c

USE_GMAKE =		Yes

.include <bsd.port.mk>
