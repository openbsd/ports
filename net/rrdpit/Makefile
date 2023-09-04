# ring-v0.16.20 does not support those archs
NOT_FOR_ARCHS =         powerpc64 riscv64 sparc64

COMMENT =		produce RRDP notification, snapshot and delta files

GH_ACCOUNT =		NLNetLabs
GH_PROJECT =		rrdpit
GH_TAGNAME =		v0.0.3
REVISION =		1

CATEGORIES =		net

# BSD 3-clause
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB}

MODULES =		devel/cargo

BUILD_DEPENDS =		security/rust-ring

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

RELEASE_DIR =		${MODCARGO_TARGET_DIR}/release

do-install:
	${INSTALL_PROGRAM} ${RELEASE_DIR}/rrdpit ${PREFIX}/bin/

.include "crates.inc"

.include <bsd.port.mk>
