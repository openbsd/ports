COMMENT =		audit Cargo.lock files for security vulnerabilities

# https://github.com/rustsec/rustsec/issues/429
V =			0.13.1
REVISION =		3
CRATE =			cargo-audit
PKGNAME =		${CRATE}-${V}

DISTFILES =		${PKGNAME}${EXTRACT_SUFX}{${CRATE}/${V}/download}

SITES =			https://crates.io/api/v1/crates/

CATEGORIES =		devel

HOMEPAGE =		https://github.com/RustSec/rustsec/tree/main/cargo-audit

# Apache 2/MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c c++abi crypto git2 m pthread ssh2 ssl

LIB_DEPENDS =		devel/libgit2/libgit2 \
			security/libssh2

MODULES =		devel/cargo
# for riscv64 and powerpc64, please keep: cc >= 1.0.73 and libc >= 0.2.113
MODCARGO_CRATES_UPDATE =	cc libc

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

WRKSRC =		${WRKDIR}/${PKGNAME}

post-patch:
	${SUBST_CMD} ${WRKSRC}/modcargo-crates/canonical-path-2.0.2/src/lib.rs

.include "crates.inc"

.include <bsd.port.mk>
