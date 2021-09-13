# $OpenBSD: Makefile,v 1.1.1.1 2021/09/13 20:51:37 abieber Exp $

COMMENT =		audit Cargo.lock files for security vulnerabilities

# https://github.com/rustsec/rustsec/issues/429
V =			0.13.1
CRATE =			cargo-audit
PKGNAME =		${CRATE}-${V}

DISTFILES =		${PKGNAME}${EXTRACT_SUFX}{${CRATE}/${V}/download}

MASTER_SITES =		https://crates.io/api/v1/crates/

CATEGORIES =		devel

HOMEPAGE =		https://github.com/RustSec/rustsec/tree/main/cargo-audit

MAINTAINER =		Aaron Bieber <abieber@openbsd.org>

# Apache 2/MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c c++abi crypto git2 m pthread ssh2 ssl

LIB_DEPENDS =		devel/libgit2/libgit2 \
			security/libssh2

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes
PATCHORIG =		.openbsd.orig

WRKSRC =		${WRKDIR}/${PKGNAME}

post-patch:
	${SUBST_CMD} ${WRKSRC}/modcargo-crates/canonical-path-2.0.2/src/lib.rs

.include "crates.inc"

.include <bsd.port.mk>
