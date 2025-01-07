# nushell removed support for arm and riscv64 in 0.81.0
NOT_FOR_ARCHS =		arm riscv64
COMMENT =		new type of shell

GH_ACCOUNT =		nushell
GH_PROJECT =		nushell
GH_TAGNAME =		0.101.0

MAINTAINER =		Volker Schlecht <openbsd-ports@schlecht.dev>

CATEGORIES =		shells

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		devel/cargo
MODCARGO_CRATES_KEEP +=	libsqlite3-sys

# Disable mimalloc feature
MODCARGO_NO_DEFAULT_FEATURES = Yes
MODCARGO_FEATURES =	plugin trash-support sqlite system-clipboard

.include "crates.inc"

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

# For Tests
PORTHOME =		${WRKSRC}

WANTLIB +=		${MODCARGO_WANTLIB} crypto m ssl

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/target/release/nu ${PREFIX}/bin/

post-patch:
	${SUBST_CMD} ${WRKSRC}/src/main.rs

# last known test results
# 0.101.0: test result: FAILED. 1324 passed; 106 failed; 23 ignored; 0 measured; 0 filtered out;

.include <bsd.port.mk>
