# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =		sparc64

COMMENT =		compiler cache for C/C++/Rust

GH_ACCOUNT =		mozilla
GH_PROJECT =		sccache
GH_TAGNAME =		v0.8.1

CATEGORIES =		devel

MAINTAINER =		Caspar Schutijser <caspar@openbsd.org>

FIX_EXTRACT_PERMISSIONS = Yes

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		crypto m ssl zstd ${MODCARGO_WANTLIB}

MODULES =		devel/cargo

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	cargo

LIB_DEPENDS +=		archivers/zstd
MODCARGO_RUSTFLAGS +=	-L${LOCALBASE}/lib

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

.include "crates.inc"

.include <bsd.port.mk>
