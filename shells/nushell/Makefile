# nushell removed support for arm and riscv64 in 0.81.0
NOT_FOR_ARCHS =		arm riscv64
COMMENT =		new type of shell

GH_ACCOUNT =		nushell
GH_PROJECT =		nushell
GH_TAGNAME =		0.92.1

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

.include <bsd.port.mk>
