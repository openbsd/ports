# nushell removed support for arm and riscv64 in 0.81.0
NOT_FOR_ARCHS =		arm riscv64
COMMENT =		new type of shell

GH_ACCOUNT =		nushell
GH_PROJECT =		nushell
GH_TAGNAME =		0.113.1
REVISION =		0

MAINTAINER =		Volker Schlecht <volker@openbsd.org>

CATEGORIES =		shells

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB} m git2

# C1x
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MODULES =		devel/cargo
MODCARGO_CRATES_KEEP +=	libsqlite3-sys

# Disable mimalloc feature
MODCARGO_NO_DEFAULT_FEATURES = Yes
MODCARGO_FEATURES =	trash-support sqlite system-clipboard rustls-tls mcp

.include "crates.inc"

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

MAKE_ENV +=		LIBGIT2_NO_VENDOR=1

LIB_DEPENDS =		devel/libgit2/libgit2

# For Tests
PORTHOME =		${WRKSRC}


do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/target/release/nu ${PREFIX}/bin/

post-patch:
	${SUBST_CMD} ${WRKSRC}/src/main.rs

# last known test results
# 0.113.1: test result: FAILED. 1747 passed; 6 failed; 25 ignored;

.include <bsd.port.mk>
