# ring-v0.16.20 does not support those archs
NOT_FOR_ARCHS =		powerpc64 riscv64 sparc64

COMMENT =		compiler cache for C/C++/Rust

GH_ACCOUNT =		mozilla
GH_PROJECT =		sccache
GH_TAGNAME =		v0.7.1
REVISION =		0

CATEGORIES =		devel

MAINTAINER =		Caspar Schutijser <caspar@openbsd.org>

FIX_EXTRACT_PERMISSIONS = Yes

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		crypto m ssl zstd ${MODCARGO_WANTLIB}

MODULES =		devel/cargo
BUILD_DEPENDS =		lang/rust \
			security/rust-ring

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	cargo

LIB_DEPENDS +=		archivers/zstd
MODCARGO_RUSTFLAGS +=	-L${LOCALBASE}/lib

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

.include "crates.inc"

.include <bsd.port.mk>
