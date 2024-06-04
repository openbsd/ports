# nushell removed support for arm and riscv64 in 0.81.0
NOT_FOR_ARCHS =		arm riscv64
COMMENT =		new type of shell

GH_ACCOUNT =		nushell
GH_PROJECT =		nushell
GH_TAGNAME =		0.94.2

CATEGORIES =		shells

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		devel/cargo
MODCARGO_CRATES_KEEP +=	libsqlite3-sys

# Disable mimalloc feature
MODCARGO_NO_DEFAULT_FEATURES = Yes
MODCARGO_FEATURES =	plugin which-support trash-support sqlite system-clipboard

.include "crates.inc"

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

# For Tests
PORTHOME =		${WRKSRC}

WANTLIB +=		${MODCARGO_WANTLIB} crypto m ssl

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/target/release/nu ${PREFIX}/bin/

# last known test results
# 0.94.2: test result: FAILED. 1133 passed; 101 failed; 24 ignored; 0 measured; 0 filtered out; finished in 168.38s

.include <bsd.port.mk>
