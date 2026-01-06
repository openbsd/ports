# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =		sparc64

COMMENT =		audit Cargo.lock files for security vulnerabilities

V =			0.22.0
CRATE =			cargo-audit
DISTNAME =		${CRATE}-${V}

DISTFILES =		${DISTNAME}${EXTRACT_SUFX}{${CRATE}/${V}/download}

SITES =			https://crates.io/api/v1/crates/

CATEGORIES =		devel

HOMEPAGE =		https://github.com/RustSec/rustsec/tree/main/cargo-audit

# Apache 2/MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB} m

MODULES =		devel/cargo
# for riscv64 and powerpc64, please keep: cc >= 1.0.73 and libc >= 0.2.113
MODCARGO_CRATES_UPDATE =	cc libc

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

#WRKSRC =		${WRKDIR}/${PKGNAME}

post-patch:
	${SUBST_CMD} ${WRKSRC}/modcargo-crates/canonical-path-2.0.2/src/lib.rs

.include "crates.inc"

.include <bsd.port.mk>
